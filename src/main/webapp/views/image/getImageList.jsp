<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.sql.DataSource" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
	
	<%

request.setCharacterEncoding( "utf-8" );
	int cpage = 1;
	if ( request.getParameter( "cpage" ) != null && !request.getParameter( "cpage" ).equals("") ) {
		cpage = Integer.parseInt( request.getParameter( "cpage" ) );
	}
	
	//데이터 개수 고정하기
	int recordPerPage = 10;
	int totalRecord = 0;
	
	//전체 페이지 개수
	int totalPage = 1;
	
	//보여질 페이지 개수
	int blockPerPage = 5;
	
	
	StringBuffer sbHtml = new StringBuffer();

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getImageList</title>
	<style type="text/css">
		
		.img_wrap {
			margin: 0 auto;
			
			padding: 2px;
			width: 1250px; height: 500px; 
		}
		img {
			width:250px; height:250px;
			object-fit: cover;
			border: 1px solid black;
			padding: 2px;
		}
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	<div id="wrap">
	
	<table class="img_wrap">
		<tr>
		<c:forEach items="${ imageList }" var="image" begin="0" end="9" step="1" varStatus="status">
			<c:if test="${ status.count == 6 }">
				</tr><tr>
			</c:if>
			<td>
				<a href="getImage.do?seq=${ image.seq }">
				<img src="/biz/upload/image_thumb/${ image.fileName }">
				</a>
			</td>
		</c:forEach>
		</tr>
	</table>
	

<%	
	//페이지 5개로 만들 때 시작페이지와 끝 페이지 선언
	int startBlock = ( ( cpage-1 ) / blockPerPage ) * blockPerPage + 1;
	int endBlock = ( ( cpage-1 ) / blockPerPage ) * blockPerPage + blockPerPage;
	if ( endBlock >= totalPage ) {
		endBlock = totalPage;
	}
%>


<%	
	//앞에 5개 페이지 넘어가기
	if ( startBlock == 1 ) {
		out.println( " <span><a>&lt;&lt;</a></span> " );
	} else {
		out.println( " <span><a href='board_list1.jsp?cpage=" + (startBlock-blockPerPage) + "'>&lt;&lt;</a></span> " );
	}
	out.println( " &nbsp; " );
	
	//이전 페이지로 넘어가기
	if ( cpage == 1 ) {
		out.println( "<span><a href=''>&lt;</a></span>" );
	} else {
		out.println( "<span><a href='board_list1.jsp?cpage=" + (cpage-1) + "'>&lt;</a></span>" );
	}
	
	//전체 페이지 출력 및 현재 페이지 표시
	out.println( "&nbsp;&nbsp;" );
	for ( int i=startBlock; i<=endBlock; i++ ) {
		if ( cpage == i ) {
			out.println( "<span>[" + i + "]</span>" );
		} else {
			out.println( "<span><a href='board_list1.jsp?cpage=" + i + "'>" + i + "</a></span>" );
		}
	}
	out.println( " &nbsp;&nbsp; " );
	
	//다음 페이지로 넘어가기
	if ( cpage == totalPage ) {
		out.println( "<span><a href=''>&gt;</a></span>" );
	} else {
		out.println( "<span><a href='board_list1.jsp?cpage=" + (cpage+1) + "'>&gt;</a></span>" );
	}
	out.println( " &nbsp; " );
	
	//뒤 5개 페이지 넘어가기
	if ( endBlock == totalPage ) {
		out.println( " <span><a>&gt;&gt;</a></span> " );
	} else {
		out.println( " <span><a href='board_list1.jsp?cpage=" + (startBlock+blockPerPage) + "'>&gt;&gt;</a></span> " );
	}
	//out.println( "<span><a href='board_list1.jsp?cpage=" + totalPage + "'>&gt;&gt;</a></span>" );
%>				
			</div>
		</div>
		<!--//페이지넘버-->
		<p><a href="insertImage.do">새 이미지 저장</a></p>
		
	</div>
</body>
</html>
	
	
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>