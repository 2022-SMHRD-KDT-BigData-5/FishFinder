package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.domain.Comment;
import com.smhrd.domain.Community;
import com.smhrd.domain.Paging;
import com.smhrd.mapper.CommunityMapper;
import com.smhrd.mapper.commentMapper;

@Controller
public class CommunityCon {

	@Autowired
	CommunityMapper mapper;
	
	@Autowired
	commentMapper cmapper;
		
	
	@RequestMapping("/view")
	public String communityList(Community vo, Model model) {
		List<Community> list = mapper.communityList(vo);		
		model.addAttribute("list", list);
		return "viewList";
	}
		
	@GetMapping("/viewList")
	public String viewList(Paging pvo, Model model
		, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		int total = mapper.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		pvo = new Paging(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pvo);
		//List<Community> list = mapper.communityList(pvo);
		model.addAttribute("list", mapper.pagingList(pvo));
		return "listPaging";
	}
		
	// community 작성하기 -> 폼화면 불러오기
	@GetMapping("/communityInsert.do")
	public String boardForm() {
		return "communityForm";				
	}
	
	// community 작성 후 DB에 넣기
	@PostMapping("/communityInsert.do")
	public String communityInsert(Community vo, MultipartFile file) {		
		mapper.communityInsert(vo);
		return "redirect:/viewList.do";
	}
	
	// 선택한 community로 이동 -> 댓글 불로오기로 이동
	@GetMapping("communityContent.do/{article_seq}")
	public String communityContent(Model model,
			@PathVariable("article_seq") int article_seq) {
		Community vo = mapper.communityContent(article_seq);	
		model.addAttribute("community", vo);		
		return "commentList";
	}
	
	// community 삭제
	@RequestMapping("/communityDelete.do")
	public String communityDelete( @PathVariable("article_seq") int article_seq) {
		System.out.println("번호 : " + article_seq);
		mapper.communityDelete(article_seq);		
		return "redirect:/viewList.do";
	}
	
	// community수정 페이지로 이동
	@RequestMapping("/communityGoUpdate.do")
	public String communityGoUpdate(Model model, int article_seq) {		
		Community vo = mapper.communityContent(article_seq);
		model.addAttribute("community", vo);
		return "communityUpdate";
	}
	
	// community 수정 후 DB에 업데이트
	@PostMapping("/communityUpdate.do")
	public String communityUpdate(Community vo) {		
		mapper.communityUpdate(vo);
		return "redirect:/viewList.do";
	}
	
		
}