package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.smhrd.domain.Search;
import com.smhrd.mapper.CommunityMapper;
import com.smhrd.mapper.commentMapper;

@Controller
public class CommunityCon {

	@Autowired
	CommunityMapper mapper;
	
	@Autowired
	commentMapper cmapper;
		
	// 게시판 보기
	@RequestMapping("/view")
	public String communityList(Community vo, Model model) {
		List<Community> list = mapper.communityList(vo);		
		int total = mapper.countBoard();
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		return "board"; // board라는 jsp로 이동
	}
	
	// 내가 쓴 게시판 보기
	@RequestMapping("/viewMy")
	public String communityMyList(Community vo, Model model) {
		List<Community> mlist = mapper.communityMyList(vo);		
		model.addAttribute("mlist", mlist);
		return "board"; // board라는 jsp로 이동
	}
		
	// community 작성하기 -> 폼화면 불러오기
	@GetMapping("/viewIn")
	public String boardForm() {
		return "writer";				
	}
	
	// community 작성 후 DB에 넣기
	@PostMapping("/viewIn")
	public String communityInsert(Community vo, MultipartFile file) {		
		mapper.communityInsert(vo);
		return "redirect:/view";  // url주소가 /view인 곳이로 이동
	}
	
	// 선택한 community로 이동 
	@RequestMapping("/viewContent/{article_seq}")
	public String communityContent(Model model,
			@PathVariable("article_seq") int article_seq) {		
		Community vo = mapper.communityContent(article_seq);	
		model.addAttribute("community", vo);	
		
		// 댓글 조회
		List<Comment> comment = cmapper.commentList(article_seq);
		model.addAttribute("comment", comment);
		return "view";
	}
	
	// 커뮤니티 조회수 수정
	@RequestMapping("/viewCntUp") 
	public int communityCntUpdate(Community vo){
		int cnt = mapper.communityCntUpdate(vo);
		return cnt;
	}
	
	// community 삭제
	@RequestMapping("/viewDel")
	public String communityDelete( @PathVariable("article_seq") int article_seq) {
		System.out.println("번호 : " + article_seq);
		mapper.communityDelete(article_seq);		
		return "redirect:/view";
	}
	
	// community수정 페이지로 이동
	@RequestMapping("/viewGoUp")
	public String communityGoUpdate(Model model, int article_seq) {		
		Community vo = mapper.communityContent(article_seq);
		model.addAttribute("community", vo);
		return "viewUp";
	}
	
	// community 수정 후 DB에 업데이트
	@PostMapping("/viewUp")
	public String communityUpdate(Community vo) {		
		mapper.communityUpdate(vo);
		return "redirect:/view";
	}
	
	// 검색
	@GetMapping("/getBoardList")
	public String getBoardList(Model model					
			, @RequestParam(required = false, defaultValue = "title") String searchType			
			, @RequestParam(required = false) String keyword) {
			
		Search search = new Search();		
		search.setSearchType(searchType);		
		search.setKeyword(keyword);				
		//전체 게시글 수		
		int listCnt = mapper.getBoardListCnt(search);
		model.addAttribute("listCnt",listCnt);
		model.addAttribute("search", search);		
		model.addAttribute("boardList", mapper.getBoardList(search));		
		return "board";

	}
}	