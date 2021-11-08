<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="./test.css" rel="stylesheet" >
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>

		<div id="profile" >
			<div class = "myPageHeader">
				<h3>내 정보</h3>
			</div>
				<div class = "Change">
					<dl class = "font"><b>회원 id</b></dl>
					<dt>
						${ user.id }
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>회원 password </b></dl>
					<dt>
						${ user.password }
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>회원 name</b></dl>
					<dt>
						${ user.name }
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>회원 email</b></dl>
					<dt>
						${ user.email }
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>최근 로그인 한 날짜</b></dl>
					<dt>
						${ user.joinDate }
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>펫 관리</b></dl>
					<dt>
						<a href="/views/getPetList.jsp"><input type="button" class = "botton" value="이동"></a>
					</dt>
				</div>
		</div>
		
		<p><a href="updateUser.do">유저 수정</a></p>
	
		<p><a href="deleteUser.do">유저 탈퇴</a></p>
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>