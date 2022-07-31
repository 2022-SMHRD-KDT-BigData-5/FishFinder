package com.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.smhrd.mapper.userinfoMapper;
import com.smhrd.mapper.userhistoryMapper;
import com.smhrd.domain.Comment;
import com.smhrd.mapper.commentMapper;
import com.smhrd.domain.Community;
import com.smhrd.domain.questionBoard;
import com.smhrd.domain.userhistory;
import com.smhrd.domain.userinfo;
import com.smhrd.mapper.CommunityMapper;
import com.smhrd.mapper.questionMapper;
@Controller
public class adminCon {

	@Autowired
	userinfoMapper userinfoMapper;
	@Autowired
	userhistoryMapper userhistoryMapper;
	@Autowired
	CommunityMapper CommunityMapper;
	@Autowired
	questionMapper questionMapper;
	@Autowired
	commentMapper commentMapper;
	
	
	@RequestMapping("/admin")
	public String admin(Model model) {
		// 카운트
		int userinfocount = userinfoMapper.usercount();
		int userhistorycount = userhistoryMapper.userhistorycount();
		int Communitycount =  CommunityMapper.countBoard();
		int questioncount =  questionMapper.questioncount();
		List<Integer> count = new ArrayList();
		count.add(userinfocount);
		count.add(userhistorycount);
		count.add(Communitycount);
		count.add(questioncount);
		
		model.addAttribute("count", count);
		
		// 미응답 질문
		List<questionBoard> qlist = questionMapper.questionNoAnswer();
		
		model.addAttribute("qlist", qlist);
		
		// 신고 게시글
		List<Community> rlist = CommunityMapper.communityReport();
		model.addAttribute("rlist", rlist);

		return "admin";
	}
	
	// community 관리자 페이지에서 삭제
	@RequestMapping("/viewDelAdmin")
	public String communityDeleteAdmin( @PathVariable("article_seq") int article_seq) {
		CommunityMapper.communityDelete(article_seq);		
		return "redirect:/admin";
	}
	
	// community 관리자 페이지에서 리스트
	@RequestMapping("/adminCommunity")
	public String adminCommunity(Community vo, Model model) {
		List<Community> list = CommunityMapper.communityList(vo);
		model.addAttribute("list", list);
		
		return "adminViewList";
	}
	
	// 관리자 게시판 선택한 community로 이동 
	@RequestMapping("/viewContent/{article_seq}")
	public String communityContent(Model model,
			@PathVariable("article_seq") int article_seq) {
		
		Community vo = CommunityMapper.communityContent(article_seq);	
		model.addAttribute("community", vo);	
		
		// 댓글 조회
		List<Comment> comment = commentMapper.commentList(article_seq);
		model.addAttribute("comment", comment);
		return "view";
	}
	
}
