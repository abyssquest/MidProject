<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>이미지 상세 페이지</title>

	<style type="text/css">
		#image {
			margin: 10px auto;
			border: 1px black solid;
		}
		.image_masterId { font-weight: bold; }
		tr > td > img {
			object-fit: cover;
			width: 500px; height: 500px;
		}
		.image_uploadDate { text-align : right; }
		.image_title { font-weight: bold; }
		.image_content {}
		#commentsWrap {
			width:800px;
			margin: 0 auto;
		}
	</style>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	$.ajax({
		type: "POST",
		url: "comment.do",
		data: "html",
		success: function(html){
			
		}
		
	});
	</script>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	<table id="image">
		<tr>
			<td class="image_masterId">${ image.masterId }</td>
		</tr>
		<tr>
			<td><img src="/biz/upload/image_main/${ image.fileName }"></td>
		</tr>
		<tr>
			<td class="image_uploadDate">${ image.uploadDate }</td>
		</tr>
		<tr>
			<td class="image_title">${ image.title }</td>
		</tr>
		<tr>
			<td class="image_content">${ image.content }</td>
		</tr>
	</table>
<%--
	<table id="commentsWrap">
					<c:forEach items="${ commentList }" var="comment">
						<form action="updateComment.do" method="post">
		<tr class="commentBox1">
			<td colspan="2">
				<span class="comment_masterId">댓글 주인 id${ comment.masterId }</span>
				<span class="comment_content">댓글 내용${ comment.content }</span>
			</td>
		</tr>
		<tr class="commentBox2">
			<td> ${ comment.uploadDate } 댓글 올라간 날짜</td>
			<td>
				 <c:if test="${ comment.masterId == id }"> 
					<input type="submit" value="수정">
				</c:if> 
			</td>
		</tr>
						</form>
					</c:forEach> 
		<tr>
			<td>업데이트 버튼(#request) 감추기 버튼</td>
		</tr>
	</table>--%>
	
	<script>
	// 'request'라는 id를 가진 버튼 클릭 시 실행.
	$("#request").click(function(){
 
		// json 형식으로 데이터 set
		var params = {
			name		: $("#name").val()
			, sex		: $("#sex").val()
			, age		: $("#age").val()
			, tellPh	: $("#tellPh").val()
		}

		// ajax 통신
		$.ajax({
			type	:	"POST",            // HTTP method type(GET, POST) 형식이다.
			url		:	"/test/ajax",      // 컨트롤러에서 대기중인 URL 주소이다.
			data	:	params,            // Json 형식의 데이터이다.
			success	:	function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
				// 응답코드 > 0000
				alert(res.code);
			},
			error	:	function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
				alert("통신 실패.")
			}
		});
	});
	</script>
	
<!-- 
	<script type="text/javascript">
		window.onload = function(){
			var xhr;

			if (window.XMLHttpRequest) { xhr=new XMLHttpRequest();
			} else if(window.ActiveXObject){ xhr=new ActiveXObject("Msxmi2.XMLHTTP");
			} else { throw new Error("Ajax가 지원하지 않는 브라우저입니다."); }
			
			
		}
	</script>
 -->
	
	<%-- <div class="btn-group" role="group" style="float:right;">
		<button type="button" class="btn-btn" onclick="location.href='/delete/${comment.seq}'">삭제</button>
		<button type="button" class="btn-btn" onclick="location.href='/list'">목록</button>
	</div> --%>
	
<%-- 	
	<div class="container">
		<label for="content">댓글</label>
		<form name="commentInsert">
			<div class="input-group">
				<input type="hidden" name="bno" value="${comments.seq }"/>
				<input type="text" class="form-control" id="content" placeholder="내용입력"/>
				<span class="input-btn">
					<button class="btn-btn" type="button" name="commentInsertBtn">등록</button>
				</span>
			</div>
		
		</form>
	
	</div>
	
	<div class="container">
		<div class="commentList"/>
	
	</div> --%>




	
	<p style="text-align: center;"><a href="getImageList.do">이미지 목록</a></p>
	
	<p style="text-align: center;"><a href="deleteImage.do?seq=${ image.seq }">이미지 삭제</a></p>
	
	<jsp:include page="/views/module/foot.jsp"/>
	
	<%-- <%@ include file="comments.jsp" %> --%>
	
	<!--
	<table cellpadding="0" cellspacing="0">

		<tr align="center" valign="middle">
			<td colspan="5">댓글</td>
		<tr>
			<td style="font-family:돋음; font-size:12" height="16">
				<div align="center">제 목</div>
			</td>
			<td>
				<input name="boardSubject" type="text" size="50" 
					maxlength="100" value="Re: "/>
			</td>
		</tr>
		<tr>
			<td style="font-family:돋음; font-size:12">
				<div align="center">내 용</div>
			</td>
			<td>
				<textarea name="boardContent" cols="100" rows="10"></textarea>
			</td>
		</tr>
		<tr bgcolor="cccccc">
			<td colspan="2" style="height:1px;">
			</td>
		</tr>
		<tr><td colspan="2">&nbsp;</td></tr>
		
		<tr align="center" valign="middle">
			<td colspan="5">
			<a href="javascript:replyboard()">[등록]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[뒤로]</a>
			</td>
		</tr>
	</table>
	-->
	
	<!--
	
	<style type="text/css">
		td { font-style:italic; }
		a { text-decoration:none; }
		a { color: brown; }
	</style>
	
	<script language="javascript">
		function replyboard(){
			boardform.submit();
		}
		
		window.onload = function(){	// onload는 html 바디영역에 있는 모든 영역을 읽어가는 시점에 발생하는 이벤트
			var submit = document.getElementById('submit');
			
			// 이벤트 연결
			function whenClick(){	//whenClick이라는 함수. alert라는 함수를 통해 뜨게끔.
				alert('댓글이 등록되었습니다.');
			}
			
			submit.onclick = whenClick;	// 본문 Click 누르면 click 팝업창 나옴.
		};
	</script>
	
	-->
</body>
</html>