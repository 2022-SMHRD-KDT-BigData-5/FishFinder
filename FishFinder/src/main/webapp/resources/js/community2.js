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
//댓글 등록
function commInsert(article_seq, user_num){			
	
	let commentCnt = Number($('#commentCnt').html());
	
	$.ajax({
	
		type : "post",
		url : 'viwContent/commIn',
		data : {
			"article_seq" : article_seq,
			"user_num" : user_num
			},
		success : function(res){
				$('#commentCnt').html( commentCnt + 1 );
			},
		error : function(e){
				alert('댓글 등록 실패')
			}	
				
	});
}
