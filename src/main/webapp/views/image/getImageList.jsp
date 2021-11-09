<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getImageList</title>
	<style type="text/css">
		#wrap {
			position: fixed; top: 120px;
			width: 100%;
		}
		.img_wrap {
			margin: 30px auto;
			
			padding: 2px;
			width: 1250px; height: 500px; 
		}
		img {
			width:250px; height:250px;
			object-fit: cover;
			border: 1px solid black;
			padding: 2px;
		}
		.bottom {
			text-align: center;
			height: 45px;
		}
		.bottom > a {
			
		}
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<table class="img_wrap">
		<tr>
		
		<c:set var="maxCount" value="${ fn:length(imageList) }"/>
		<fmt:parseNumber var="maxPage" value="${ (maxCount/10) + 1 }" integerOnly="true"/>
		<c:set var="start" value="${ 0 + (page - 1) * 10 }"/>
		<c:forEach items="${ imageList }" var="image" begin="${ start }" end="${ start + 9 }" step="1" varStatus="status">
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
		<tr>
			<td class="bottom" colspan="5">
			<c:forEach begin="1" end="${ maxPage }" varStatus="cnt">
				<c:choose>
					<c:when test="${ page == cnt.count }">
					&nbsp[${ page }]&nbsp
					</c:when>
					<c:when test="${ page != cnt.count }">
					&nbsp
					<a href="getImageList.do?page=${ cnt.count }">[${ cnt.count }]</a>
					&nbsp
					</c:when>
				</c:choose>
			</c:forEach>
			</td>
		</tr>
		<tr>
			<td class="bottom" colspan="5">
			<a href="insertImage.do">새 이미지 저장</a>
			</td>
		</tr>
	</table>
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>