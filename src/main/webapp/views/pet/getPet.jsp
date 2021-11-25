<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getPet</title>
	
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap');
		.font {
			font-family: 'Gamja Flower', cursive;
			font-size : 30px;
		}
	
		.image{
			width : 500px;
			height :400px;
			float : left;
			margin-top:5%;
			margin-left: 20%;
			border-radius : 10px;
		}
		
		.text{
			width : 500px;
			height : 350px;
			float : right;
			margin-top:6%;
			margin-right:25%;
			border : 10px solid #99CC99;
			border-radius : 10px;
			padding : 2px;
		}
		.petText{
			font-size: 28px;
			text-decoration: none;
			margin-left : 10px;
			margin-top : 10px;
			
		}
		.pet_ud{
			float : right;
			margin-top: 8px;
		}
		
		.btn{
			font-size : 30px;
			border : 1px solid #99CC00;
			box-shadow : 0 4px 6px -1px rgba(0,0,0,0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
			transition : 0.5s;
			margin-right:10px;
			border-radius:15px;
			margin : 0;
			padding : 0.5rem 1rem;
			text-align : center;
			display : inline-block;
			width : auto;
			text-decoration: none;
			
			
		}
		a:focus{
			cursor: pointer;
		}
		
	
	</style>
	
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
			
		<div class="font">
			<div class="image">
				<p><img src="/biz/upload/profile_pet/${ pet.petImage }"></p>
			</div>
			
			<div class="text">
				<div class="petText">
					펫 이름 : ${ pet.name }
				</div>
				
				<div class="petText">
					펫 생일 : ${ pet.birthDate }
				</div>
				
				<div class="petText">
					<div>
						<b>"</b>
						<a href="getPetList.do">펫 목록으로 가기</a>
						<b>"</b>
					</div>
				</div>
				
				<br><br>
				
				<div class="pet_ud">
					<a href="updatePet.do?petKey=${ pet.petKey }" class="btn">펫 수정</a>
					<a href="deletePet.do?petKey=${ pet.petKey }" class="btn">펫 삭제</a>
				</div>
			</div>
		</div>
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>