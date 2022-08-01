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

// 유저 넘버에서 이름 가져오기
function getname(user_num){
	
	let getname = $('#getname' + user_num).html();
	
	$.ajax({
		type : "post",
		url : "getname",
		data : {
			"user_num" : user_num
			},
			success : function(res){
				$('#getname'+article_seq).html( getname );
			},
			error : function(e){
				alert('view error')
			}
			
		});
}
