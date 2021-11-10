<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getPetList</title>
	<style type="text/css">
		table {
			margin: 0 auto;
		}
		h2{
			text-align: center;
		}
		h3{
			text-align: center;
		}
		td {
			text-align: center;
		}
		tbody > tr:nth-child(2) > td, tbody > tr:nth-child(2) > td > img {
			width: 300px; height: 300px;
			object-fit: fill;
		}
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	<h2>펫 목록 내용</h2>
	<table>
		<tr>
			<c:forEach items="${ petList }" var="pet">
			<td><a href="getPet.do?petKey=${ pet.petKey }">${ pet.name }</a></td>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach items="${ petList }" var="pet">
			<td>
				<a href="getPet.do?petKey=${ pet.petKey }">
				<img src="/biz/upload/profile_pet/${ pet.petImage }">
				</a>
			</td>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach items="${ petList }" var="pet">
			<td>생일 : ${ pet.birthDate }</td>
			</c:forEach>
		</tr>
	</table>
	
	
	<h3><a href="insertPet.do">새 펫 등록</a></h3>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>