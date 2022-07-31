// 삭제하기
function commDel(comment_seq){
	console.log(comment_seq);
	if(!confirm("삭제하시겠습니까?")){
    alert("취소");
 	}else{
	location.href = "/fish/commDel/" + comment_seq;
	alert("삭제");
	}
}
//==================================================================================
//모달창
$(document).on("click", "a", "#commUpdate", function() {
	event.preventDefault(); // 고유 이벤트 중지
            	
	// 클릭한 대상의 번호를 모달창에 저장.
	var comment_seq = $(this).attr("href");
	$("#modalRno").val(comment_seq);
            	
	// replyModify라면 수정창
	if( $(this).hasClass("comments_modify") ){ // 수정창          		
		$(".modal-title").html("댓글수정");
		$("#modalModBtn").css("display", "inline"); // 수정버튼은 보여지도록 처리
		$("#modalReply").css("display", "inline"); // 수정창 보여지도록	
	}          	
	$("#replyModal").modal("show"); // 부트스트랩 모달 함수            	
});

// end on
// 수정 함수
$("#modalModBtn").click(function() {

  var comment_seq = $("#modalRno").val();
  var comment_content = $("#modalReply").val();

  $.ajax({
    type : "post",
    url : "commUp",
    contentType : "json",
    data : JSON.stringify({"comment_seq": comment_seq, 
    					"comment_content": comment_content}),
    success : function(data) {

    if(data == 1){ // 업데이트 성공
      $("#modalReply").val(""); // 내용비우기
      $("#modalRno").val("");

      $("#replyModal").modal("hide"); // 모달창 내리기
      }							
     },
    error : function(status, error) {
    	alert("수정 실패");
    }
  });

});


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
