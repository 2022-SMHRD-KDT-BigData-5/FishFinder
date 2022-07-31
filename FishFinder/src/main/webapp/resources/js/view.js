document.getElementsByClassName("comments_delete").addEventListener('click', commDel);
function commDel(comment_seq){
  if(!confirm("삭제(확인) 또는 취소를 선택해주세요.")){
    alert("취소.");
  }else{
    alert("삭제.");
    location.href = '/fish/viewContent/commDel?comment_seq='+ comment_seq;
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
	location.href = '/fish/viewDel?article_seq=' + article_seq;
}
		
// 수정하기
function goUpdate(article_seq){		
	location.href = '/fish/viewGoUp?article_seq=' + article_seq;
}
//====================================================================================
// 댓글수
function commCnt(article_seq){	

		$.ajax({
			type : "post",
			url : "commCnt",
			dataType : "json",
			data : {
				"article_seq" : article_seq,
			},
			success : function(res){
				log.console('댓글수 성공');
			},
			error : function(e){
				log.console('댓글수 실패');
			}
		});
		
}
