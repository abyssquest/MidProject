<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getPetList</title>
	<style type="text/css">
		
	</style>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	<p>펫 목록 내용</p>
	<table>
		<tr>
			<th>이름</th>
			<th>주인id</th>
			<th>생일</th>
		</tr>
		<c:forEach items="${ petList }" var="pet">
			<tr>
				<td><a href="getPet.do?seq=${ pet.seq }">${ pet.name }</a></td>
				<td>${ pet.masterId }</td>
				<td>${ pet.birthDate }</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<p><a href="insertPet.do">새 펫 등록</a></p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>