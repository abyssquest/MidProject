<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="updateContent.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
		<div id="profile">
			<div class = "myPageHeader">
			<br>
				<h2>내 정보 수정</h2>
			</div>

			<form action="updateUser.do" method="post" enctype="multipart/form-data">
				
				<div class = "Change">
					<b class = "font">이름</b><br><br><br>
					<b class = "font_content">설정된 이름 : </b><b class = "font font_height"> ${ user.name }</b><br><br>
					<b class = "font_content">수정할 이름 : </b><input type="text" name="name" class = "input">
				</div>

				<div class = "Change">
					<b class = "font">프로필 사진</b><br>
	 				<input type="file" id="upload_file" accept="image/*" required="true" value="업로드">
	 				<img src="/biz/views/source_image/${ user.profileImage}" id="img_section" style="width: 100px; height: 100px;">
					<script>
					       const reader = new FileReader();
					       reader.onload = (readerEvent) => {
					       document.querySelector("#img_section").setAttribute("src", readerEvent.target.result);
					       };
						
					       document.querySelector("#upload_file").addEventListener("change", (changeEvent) => {
					       const imgFile = changeEvent.target.files[0];
					       reader.readAsDataURL(imgFile);
					  })
					</script>
				</div>

				<div class = "Change">
					<b class = "font">이메일</b><br><br><br>
					<b class = "font_content">설정된 email : </b><b class = "font font_height">${ user.email }</b><br><br>
					<b class = "font_content">수정할 email : </b><input type="text" name="name" class = "input">
				</div>

				<div id = "bottom">
					<input type="submit" value="정보 수정" class= "button" onclick="onsubmit()"> &nbsp;&nbsp;&nbsp;
					<a href="javascript:history.go(-1)"><input type="button" value="뒤로 가기" class= "button"></a>
				</div>
			</form>
		</div>
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>