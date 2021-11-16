<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>insertPetForm</title>
	<style>	
		@import url('https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap');
		body{
			background-image: url('https://images.unsplash.com/photo-1508948956644-0017e845d797?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2110&q=80'), url('https://images.unsplash.com/photo-1545249390-6bdfa286032f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=644&q=80');
		}
		.in_Pet{
			background: white;
			width : 400px;
			height : 550px;
			float : center;
			border: 5px solid #99CC66;
			font-family: 'Gamja Flower', cursive;
			font-size : 30px;
			margin-top:5%;
			margin-left : 39%;
			
			
			border-radius: 10px;
			padding-left: 50px;
			
		}
		
		label{
			text-align : left;
			
		}
		
		#inputbtn{
			float : right;
			border-radius: 10px;
			font-size : 20px;
			margin-top : 25px;
			margin-right : 15px;
			
			padding-left:5%;
			padding-right:5%;
			outline:none;
			border-style:none;
			box-shadow: none;
			
		}
		
		#inputlabel{
			border-style:none;
			border-bottom-style:double;
			outline:none;
			width : 300px;
			height:20px;
			border-radius: 8px;
		}
		.back{
			color: white;
			margin-top : 10px;
			margin-left : 75%;
		}
		.back > a { text-decoration: none; color: white; }
		input:focus{
			cursor: pointer;
		}
		
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	<form action="insertPet.do" method="post" enctype="multipart/form-data">
		
		<div class="in_Pet">
			<h2>펫 등록하기</h2>
			<div>
				<input type="hidden" name="masterId" value="<%= (String)session.getAttribute("id")%>">
			</div>
			<div>
				<label>이름</label><br>
				<input type="text" name="name" id="inputlabel">
			</div>
			<br>
			<div>
				<label>생일</label><br>
				<input type="date" name="birthDate" id="inputlabel">
			</div>
			<br>
			<div>
				<label>펫 사진</label><br>
				<input type="file" name="uploadFile">
			</div>
			<br>
			<input type="submit" value="등록" id="inputbtn">
			<br>
			
			<div class="back">
				<br>
				<a href="getPetList.do">뒤로가기</a>
			</div>
		</div>
			
	</form>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>