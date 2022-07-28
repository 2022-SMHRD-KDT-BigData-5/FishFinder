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
	
	// 댓글 불러오기
	@GetMapping("/commentList/{article_seq}")
	public String communityContent(Comment cvo, Model model,
			@PathVariable("article_seq") int article_seq) {
		List<Comment> clist = cmapper.commentList(article_seq);
		model.addAttribute("clist", clist);
		return "view";
	}
	// Comment 등록
	@PostMapping("/commInsert")
	public String commentInsert(Comment cvo, MultipartFile file) {		
		cmapper.commentInsert(cvo);
		return "redirect:/communityContent.do/{article_seq}";
	}
	
	// Comment 삭제
	@RequestMapping("/{commet_seq}")
	public String commentDelete( @PathVariable("comment_seq") int comment_seq) {
		System.out.println("번호 : " + comment_seq);
		cmapper.commentDelete(comment_seq);		
		return "redirect:/communityContent/{article_seq}";
	}	
	
	// 댓글 수 불러오기
	public int commentCount(@PathVariable("article_seq") int article_seq) {
		int ctotal = cmapper.commentCount(article_seq);
		return ctotal;
	}
	
	// Comment 수정 후 DB에 업데이트
	@PostMapping("/{commet_seq}")
	public String commentUpdate(Comment cvo) {
		cmapper.commentUpdate(cvo);
		return "redirect:/communityContent.do/{article_seq}";
	}
}
