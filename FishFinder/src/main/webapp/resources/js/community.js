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
//====================================================================================
