package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.domain.Comment;
import com.smhrd.domain.Community;
import com.smhrd.mapper.commentMapper;

@Controller
public class CommentCon {

	@Autowired
	commentMapper cmapper;
	
	// 댓글 조회
	@GetMapping("commList/{comment_seq}")
	public String commentList(@PathVariable("comment_seq") int comment_seq, Model model) {
	List<Comment> comment = cmapper.commentList(comment_seq);
	model.addAttribute("comment", comment);
	return "view";
	}
	
	// Comment 등록
	@RequestMapping("/commIn")
	public String commentInsert(Comment cvo) {		
		cmapper.commentInsert(cvo);
		int article_seq = cvo.getArticle_seq();
		return "redirect:/viewContent/"+article_seq;
	}
		
	// 댓글 수 불러오기
	@RequestMapping("/commCnt/{article_seq}")
	public String commentCount(@PathVariable("article_seq") int article_seq, Model model) {
		int ctotal = cmapper.commentCount(article_seq);
		model.addAttribute("ctotal",ctotal);
		return "board";
	}
	
	// Comment 삭제
	@RequestMapping("/commDel")
	public String commentDelete( @PathVariable("comment_seq") int comment_seq) {
		System.out.println("번호 : " + comment_seq);
		cmapper.commentDelete(comment_seq);		
		return "redirect:/viewContent/{article_seq}";
	}	
	
	// Comment 수정 후 DB에 업데이트
	@RequestMapping("/commUp")
	public String commentUpdate(@PathVariable("comment_seq") int comment_seq, Comment cvo) {
		cvo.setComment_seq(comment_seq);
		cmapper.commentUpdate(cvo);
		return "redirect:/viewContent/{article_seq}";
	}
}
