<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>홈 페이지</title>

</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	<% response.sendRedirect("getImageList.do"); %>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>