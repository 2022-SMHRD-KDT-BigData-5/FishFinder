// 댓글 삭제하기
function commDel(comment_seq, article_seq){
	console.log(comment_seq);
	if(!confirm("삭제하시겠습니까?")){
    	alert("취소");
 	}else{
		location.href = "/fish/commDel/" + comment_seq + "/" + article_seq;
		alert("삭제 성공");
 	}
}

//==================================================================================
//목록가기
function goList(){
	location.href = '/fish/view';
}
		
// 게시글 삭제하기
function goDelete(article_seq){
	console.log(article_seq);
	location.href = '/fish/viewDel/' + article_seq;
}
		
// 게시글 수정하기
function goUpdate(article_seq){		
	location.href = '/fish/viewGoUp/' + article_seq;
}
//====================================================================================
