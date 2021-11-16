<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="./test.css" rel="stylesheet" >
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
				<h3>내 정보</h3>
			</div>

			<form action="updateUser.do" method="post" enctype="multipart/form-data">
			
				<div class = "Change">
					<dl class = "font"><b>패스워드</b></dl>
					<dt>
						<!-- 비밀번호는 보안상 보이면 안될거 같아서 일부러 주석처리했습니다... -->
						<%-- <b class = "font font_height">${ User.password}</b> --%>
						<p>새로운 패스워드를 설정합니다.</p>
						<a href="./update/updatePassword.jsp"><input type="button" value=" 수정 " class = "botton"></a>
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>이름</b></dl>
					<dt>
						<b class = "font font_height"> ${ User.name }</b>
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>프로필 사진</b></dl>
					<dt> <!-- 현재는 디폴트 값으로 선택되어진 상태. -->
						<img src="biz/views/source_image/${ User.profileImage}" id="img_section" style="width: 100px; height: 100px;"><br>
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>이메일</b></dl>
					<dt>
						<b class = "font font_height">${ User.email }</b>
					</dt>
				</div>
				
				<div class = "Change">
					<dl class = "font"><b>기본 정보 설정</b></dl>
					<dt>
						<p>이름과 프로필 사진 , 이메일을 설정하는 페이지입니다.</p>
						<a href="./update/updateContent.jsp"><input type="button" class = "botton" value="이동"></a>
					</dt>
				</div>
			
				<div class = "Change">
					<dl class = "font"><b>펫 관리</b></dl>
					<dt>
						<a href="/views/getPetList.jsp"><input type="button" class = "botton" value="이동"></a>
					</dt>
				</div>
				<button id="go-back" class = "">뒤로 가기</button>
			</form>
		</div>
		
	<jsp:include page="/views/module/foot.jsp"/>

</body>
</html>