<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="getUser.css" rel="stylesheet" >
	<script type="text/javascript">
	document.getElementById('go-back').addEventListener('click', () => {
		  window.history.back();
	});
	</script>
	<style type="text/css">
	h2{
		text-align: center;
		margin: 40px, auto;
		padding: 10px;
		font-family: "Gamja Flower";
	}
	table, tr, td, th {
		font-weight: bold;
		font-size: large;
		font-family: "Gamja Flower";
		margin: 10px auto;
		padding: 10px auto;
		
		
	}
	table {
		margin: 0 auto;
	}
	tr > td:first-child {
		width: 150px;
		text-align: center;
	}
	tr > td:last-child {
		padding-left: 30px;
		width: 480px;
	}
	tr {
		height: 65px;
		
	}
	td {
		border-bottom: 1px solid #D3D3D3;
	}
	#go-back {
		text-align: center;
		margin: 10px auto;
	}
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
		<div id="profile">
			<div class = "myPageHeader">
				<h2>내 정보</h2>
			</div>
				<form action="updateUser.do" method="post" enctype="multipart/form-data">
				<table id = "Menu">
					<tr class = "Change">
						<td class = "font">패스워드</td>
						<td class = "font_content">새로운 패스워드를 설정합니다.
							<a href="updatePw.do"><input type="button" value=" 수정 " class = "botton"></a>
						</td>
					</tr>
					<tr class = "Change">
						<td class = "font">이름</td>
						<td class = "font_content">${ User.name }</td>
					</tr>
					<tr class = "Change">
						<td class = "font">프로필 사진</td>
						<td class = "font_content">기본 정보 설정 페이지에서 확인 가능합니다.</td>
					</tr>
					<tr class = "Change">
						<td class = "font">이메일</td>
						<td class = "font_content">${ User.email }</td>
					</tr>
					<tr class = "Change">
						<td class = "font">기본 정보 설정</td>
						<td class = "font_content">이름과 프로필 사진 , 이메일을 설정하는 페이지입니다.
							<a href="updateUser.do"><input type="button" class = "botton" value="이동"></a>
						</td>
					</tr>
					<tr class = "Change">
						<td class = "font">펫 관리</td>
						<td class = "font_content">펫 관리 페이지로 이동합니다.
							<a href="getPetList.do"><input type="button" class = "botton" value="이동"></a>
						</td>
					</tr>
					<tr class = "Change">
						<td class = "font">기본 정보 설정</td>
						<td class = "font_content">이름과 프로필 사진 , 이메일을 설정하는 페이지입니다.
							<a href="updateUser.do"><input type="button" class = "botton" value="이동"></a>
						</td>
					</tr>
					<tr class = "Change">
						<td colspan="2"><button id="go-back">뒤로 가기</button></td>
					</tr>
				</table>
				
			</form>
		</div>
		
	<jsp:include page="/views/module/foot.jsp"/>

</body>
</html>