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
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
		<div id="profile">
			<div class = "myPageHeader">
				<h2>내 정보</h2>
			</div>
				<form action="updateUser.do" method="post" enctype="multipart/form-data">
					<div id = "Menu">
						<div class = "Change">
							<b class = "font">패스워드</b><br><br>
							<b class = "font_content">새로운 패스워드를 설정합니다.</b>
							<a href="./updatePassword.jsp"><input type="button" value=" 수정 " class = "botton"></a>
						</div>

						<div class = "Change">
							<b class = "font">이름</b><br><br>
							<b class = "font_content"> ${ User.name }</b>
						</div>

						<div class = "Change">
							<b class = "font">프로필 사진</b><br><br>
							<b class = "font_content">기본 정보 설정 페이지에서 확인 가능합니다.</b>
						</div>
					</div>
					<div>
						<div class = "Change">
							<b class = "font">이메일</b><br><br>
							<b class = "font_content">${ User.email }</b>
						</div>

						<div class = "Change">
							<b class = "font">기본 정보 설정</b><br><br>
							<b class = "font_content">이름과 프로필 사진 , 이메일을 설정하는 페이지입니다.<b>
							<a href="./update/updateContent.jsp"><input type="button" class = "botton" value="이동"></a>
						</div>

						<div class = "Change">
							<b class = "font">펫 관리</b><br><br>
							<b class = "font_content">펫 관리 페이지로 이동합니다.</b>
							<a href="/views/getPetList.jsp"><input type="button" class = "botton" value="이동"></a>
						</div>
					</div>
					<div class = "Change">
						<button id="go-back">뒤로 가기</button>
					</div>
			</form>
		</div>
		
	<jsp:include page="/views/module/foot.jsp"/>

</body>
</html>