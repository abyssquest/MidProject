<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getImage</title>
	
	<style type="text/css">
		td { font-style:italic; }
		a { text-decoration:none; }
		a { color: brown; }
	</style>
</head>
<body>
	<jsp:include page="/views/module/log.jsp"/>
	
	<p>getImage 페이지</p>
	
	<p>이미지 번호 : ${ image.seq }</p>
	<p>이미지 타이틀 : ${ image.title }</p>
	<p>이미지 컨텐츠 : ${ image.content }</p>
	<p>이미지 주인 id : ${ image.masterId }</p>
	<p>이미지 업로드날짜 : ${ image.uploadDate }</p>
	<img src="/biz/save_file/${ image.uploadFileName }">
	
	<div class="btn-group" role="group" style="float:right;">
		<button type="button" class="btn-btn" onclick="location.href='/delete/${comment.seq}'">삭제</button>
		<button type="button" class="btn-btn" onclick="location.href='/list'">목록</button>
	</div>
	
	<div class="container">
		<label for="content">댓글</label>
		<form name="commentInsert">
			<div class="input-group">
				<input type="hidden" name="bno" value="${comments.seq }"/>
				<input type="text" class="form-control" id="content" placeholder="내용입력"/>
				<span class="input-btn">
					<button class="btn-btn" type="button" name="commentInsertBtn">등록</button>
				</span>
			</div>
		
		</form>
	
	</div>
	
	<div class="container">
		<div class="commentList"/>
	
	</div>

<%@ include file="comments.jsp" %>

<!-- <table cellpadding="0" cellspacing="0">

		<tr align="center" valign="middle">
			<td colspan="5">댓글</td>
		<tr>
			<td style="font-family:돋음; font-size:12" height="16">
				<div align="center">제 목</div>
			</td>
			<td>
				<input name="boardSubject" type="text" size="50" 
					maxlength="100" value="Re: "/>
			</td>
		</tr>
		<tr>
			<td style="font-family:돋음; font-size:12">
				<div align="center">내 용</div>
			</td>
			<td>
				<textarea name="boardContent" cols="100" rows="10"></textarea>
			</td>
		</tr>
		<tr bgcolor="cccccc">
			<td colspan="2" style="height:1px;">
			</td>
		</tr>
		<tr><td colspan="2">&nbsp;</td></tr>
		
		<tr align="center" valign="middle">
			<td colspan="5">
			<a href="javascript:replyboard()">[등록]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[뒤로]</a>
			</td>
		</tr>
	</table>
 -->
	
	<p><a href="getImageList.do">이미지 목록</a></p>
	
	<p><a href="deleteImage.do?seq=${ image.seq }">이미지 삭제</a></p>
	
	<p>
		스프링 콘솔 창을 보세요
		<a href="index.do">인덱스 창</a>
	</p>
	
	<jsp:include page="/views/module/foot.jsp"/>
	
	<script language="javascript">
		function replyboard(){
			boardform.submit();
		}
		
		window.onload = function(){	// onload는 html 바디영역에 있는 모든 영역을 읽어가는 시점에 발생하는 이벤트
			var submit = document.getElementById('submit');
			
			// 이벤트 연결
			function whenClick(){	//whenClick이라는 함수. alert라는 함수를 통해 뜨게끔.
				alert('댓글이 등록되었습니다.');
			}
			
			submit.onclick = whenClick;	// 본문 Click 누르면 click 팝업창 나옴.
		};
	</script>
</body>
</html>