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
	
	// Comment 등록
	@PostMapping("viewContent/commIn")
	public String commentInsert(Comment cvo, MultipartFile file) {		
		cmapper.commentInsert(cvo);
		return "redirect:/viewContent/?article_seq=" + cvo.getArticle_seq();
	}
	
	// 작성한 댓글보기
	@GetMapping("/viewContent/{article_seq}")
	public String commentview(Model model,
			@PathVariable("article_seq") int article_seq) {
		
		Comment cvo = cmapper.commentview(article_seq);	
		model.addAttribute("comment", cvo);
		return "view";
	}
	// Comment 삭제
	@RequestMapping("/commDel")
	public String commentDelete( @PathVariable("comment_seq") int comment_seq) {
		System.out.println("번호 : " + comment_seq);
		cmapper.commentDelete(comment_seq);		
		return "redirect:/viewContent/{article_seq}";
	}	
	
	// 댓글 수 불러오기
	public int commentCount(@PathVariable("article_seq") int article_seq) {
		int ctotal = cmapper.commentCount(article_seq);
		return ctotal;
	}
	
	// Comment 수정 후 DB에 업데이트
	@PostMapping("/commUp")
	public String commentUpdate(Comment cvo) {
		cmapper.commentUpdate(cvo);
		return "redirect:/viewContent/{article_seq}";
	}
}
