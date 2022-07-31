// 삭제하기
function commDel(comment_seq){
	console.log(comment_seq);
	if(!confirm("삭제하시겠습니까?")){
    alert("취소");
 	}else{
	location.href = "/fish/commDel/comment_seq=" + comment_seq;
	alert("삭제");
	}
}


function commUp(comment_seq, article_seq){
  if(!confirm("수정하시겠습니까?")){
    alert("취소");
  }else{
    alert("수정");
    location.href = "/fish/viewContent/commUp/comment_seq="+ comment_seq+"&article_seq="+article_seq;
  }
}

//====================================================================================
//목록가기
function goList(){
	location.href = '/fish/view';
}
		
// 삭제하기
function goDelete(article_seq){
	console.log(article_seq);
	location.href = '/fish/viewDel/article_seq=' + article_seq;
}
		
// 수정하기
function goUpdate(article_seq){		
	location.href = '/fish/viewGoUp/article_seq=' + article_seq;
}
//====================================================================================
// 댓글수
function commCnt(article_seq){	

		$.ajax({
			type : "post",
			url : "commCnt",
			dataType : "json",
			data : {
				"article_seq" : article_seq
			},
			success : function(res){
				console.log('댓글수 성공');
			},
			error : function(e){
				console.log('댓글수 실패');
			}
		});
		
}
