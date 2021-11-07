<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getImageList</title>
<style type="text/css">
		img { width:250px; height:250px; }
	
	</style>
</head>
<body>
	<jsp:include page="/views/module/log.jsp"/>
	
	<p>이미지 게시판 내용</p>
		



	<table border="3" align="center"
			width=1250px height=500px>
		<tr>
			<td>
				<img src="./upload/image_thumb/${ fileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
		</tr>
		<tr>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
			<td>
				<img src="./upload/image_thumb/${ image.uploadFileName }"/>
			</td>
		</tr>
	</table>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>