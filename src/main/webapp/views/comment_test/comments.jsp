<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
var seq = '${comments.seq}'; //게시글 번호

$('[name=commetInsertBtn]').click(function(){ //댓글 등록 버튼 클릭
	var insertData = $('[name=commentInsert]').serialize();
	commentInsert(insertData);
});

function commentList(){
	$.ajax({
		url : '/comment/list',
		type : 'get',
		data : {'seq':seq},
		success : function(data){
			var a='';
			$.each(data, function(key, value){
				a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.imageSeq+'">'+'댓글번호 : '+value.imageSeq+' / 작성자 : '+value.masterId;
                a += '<a onclick="commentDelete('+value.imageSeq+');"> 삭제 </a> </div>';
                a += '<div class="commentContent'+value.imageSeq+'"> <p> 내용 : '+value.content +'</p>';
              	a += '</div></div>'; 

			});
		 	
			$(".commentList").html(a)
		}
	})
}

function commentInsert(insertData){
	$.ajax({
		url : '/comment/insert',
		type : 'post',
		data : insertData,
		success : function(data){
			if(data == 1){
				commentList(); //댓글 작성 후 댓글 목록 불러오기
			${'[name=content]'}.val('');
			}
		}
	});
}

function commentDelete(imageSeq){
	$.ajax({
		url : '/comment/delete'+ imageSeq,
		type : 'post',
		success : function(data){
			if(data == 1) commentList(seq);
		}
	});
}

$(document).ready(function(){
	commentList();
});
</script>