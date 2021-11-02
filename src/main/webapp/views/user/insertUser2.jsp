<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>회원가입</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <style type="text/css">
    	
    	/* 중앙만 사용할거라 영역 지정용 */
    	body{
    		position:relative; width: 496px; height:586px;
    		left: 28%;
    	}
    	
    	/*멍냥멍냥*/
    	.logo{
    		font-size: 60px; font-family: sans-serif;
    		position: absolute; top:5%; left:25%;
    	}
    	
    	 /* from - div */
    	#box {width: 300px; height:224px; border-radius:19px;
    	border-top:27px solid yellow;border-bottom:10px solid yellow;
    	border-right:10px solid yellow;border-left:10px solid yellow;
    		/* background:yellow; */ position:absolute; top:47%; left:19%;
    		z-index: 3;
    	}
    	form {
    		position:absolute; top:10px; left:7px;
    	}
    	
    	/* 버튼 관련 */
    	.input-group-text{width:90px;}
    	
    	.btn-secondary{
    		background-color:#e9ecef; border-color:#ced4da; color:#495057;
    		position:absolute; top:135px; left:54px; width:173px;
    	}
    	
    	/* 사진 */
    	img{
    		width:98px; 
    		position:absolute; z-index: 5;
    		top:35%; left:40%;
    	}
    </style>
  </head>
  <body>
  	<div class="box0" >
  		 <div >
  			<span class="logo">
  				멍냥멍냥
  			</span>
  		</div>
  		<div>
  			<img src="/MidProject/src/main/webapp/source_image/insertDog.png">
  		</div> 
  		<div id="box">
  			<form action="insertUser.do" method="post">
	  			<div class="input-group input-group-sm mb-2">
				  <span class="input-group-text" id="inputGroup-sizing-sm">&nbsp;&nbsp;이&nbsp;&nbsp;름&nbsp;&nbsp;</span>
		  		  <input id="name" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
				</div>
				<div class="input-group input-group-sm mb-2">
				  <span class="input-group-text" id="inputGroup-sizing-sm">&nbsp;아이디&nbsp;&nbsp;</span>
		  		  <input id="id" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
				</div>
				<div class="input-group input-group-sm mb-2">
				  <span class="input-group-text" id="inputGroup-sizing-sm">비밀번호</span>
		  		  <input id="password" type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
				</div>
				<button type="button" class="btn btn-secondary" type="submit">회원가입</button>
  			</form>
  		</div>
  	</div>
  
  
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>
</html>
















