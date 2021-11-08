<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
	<meta http-equiv="X-UA-Compatible" content="ie=edge" /> -->

	<title>insertImage</title>

	<style type="text/css">

		form{
			border-collapse: collapse;
		}

		#insertPage{
			color : black;
			background : #f2f4f7;
			border-radius: 16px;
			margin:10px;
			padding:10px;
		}

		.insertMain{
			border: 1px solid #f2f4f7;
			border-radius: 16px;
			margin-top: 5%;
			margin: 0 2%;
			padding:10px;
		}

		#test1{
			background-color: #f2f4f7;
			border : 2px solid #ffebb5;
			border-radius:16px;
		}

		input:focus { 
			
			background-color : grey; 
			cursor:pointer; 

		}
		.title{
			border-radius:10px;
			width:100%; height:25px;
		}

		.content{
			border-radius:16px;
			width:100%; height:200px;
		}

		#btn{
			margin:0px 50%;
			margin-bottom: 2%;
		}

		label{
			font-style:solid;
		}

	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	<form action="insertImage.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="masterId" value="<%= (String)session.getAttribute("id") %>">

		<div id="insertPage">	
		<h2>이미지등록하기</h2>
			<div id = test1>

				<div class="insertMain">
					<label>타이틀</label><br>
					<input type="text" name="title" class="title">
				</div>

				<div class="insertMain">
					<label>파일첨부</label><br>
					<img src="고양이.jpg" id="img_section" style="width: 100px; height: 100px;"><br>
 					<input type="file" id="upload_file" name="uploadFile" accept="image/*" required=true value="업로드">
 					<!-- 이미지 파일 100px로 지정해서 미리보기 가능하게끔 구현 -->
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

				<div class="insertMain">
					<label>컨텐츠</label><br>
					<input type="text" name="content" class="content">
				</div>

				<div id="btn">
					<br>
					<input type="submit" value="등록" class = "botton">
				</div>
			</div>
		</div>
	</form>

	<br>
	<br>
	<br>

	<div><h3><b><a href="./getImageList.jsp">이미지 게시판으로 이동하기</a></b></h3></div>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>