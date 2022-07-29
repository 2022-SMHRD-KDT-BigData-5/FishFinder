//====================================================================================
// 내용 보기 + 조회수 카운트
function open(article_seq){	
		
		location.href='/fish/viewContent/' + article_seq;
		let count = Number($('#count' + article_seq).html());
		
		$.ajax({
			type : "post",
			url : "viewCntUp",
			dataType : "json",
			data : {
				"article_seq" : article_seq,
				"article_cnt" : count + 1
			},
			success : function(res){
				$('#count'+article_seq).html( count + 1 );
			},
			error : function(e){
				alert('view error')
			}
		});
		
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

// 댓글삭제하기
function commDel(comment_seq){
	location.href = '/fish/commDel?comment_seq=' + comment_seq;
}
		
// 댓글삭제하기
function commUp(comment_seq){
	location.href = '/fish/commUp?comment_seq=' + comment_seq;
}
		
//댓글 등록
function commInsert(article_seq, user_num){						
			
	$.ajax({
			
		type : "GET",
		url : 'viwContent/commIn',
		data : {
			"article_seq" : article_seq,
			"user_num" : user_num
			},
		success : function(res){
				alert('댓글 등록 성공')
			},
		error : function(e){
				alert('댓글 등록 실패')
			}	
						
	});
}