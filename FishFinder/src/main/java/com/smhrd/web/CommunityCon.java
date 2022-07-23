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

import com.smhrd.domain.Community;
import com.smhrd.mapper.CommunityMapper;

@Controller
public class CommunityCon {

	@Autowired
	CommunityMapper mapper;
	
	
	@RequestMapping("/communityList.do")
	public String communityList(Community vo, Model model) {
		int unit = vo.getUnit();
		int cntPage = 5; // 페이징 구간에 보이는 숫자 갯수
		// 총 데이터 개수
		int total = mapper.selectCommunityTotal(vo);
	
		int totalPage = (int)Math.ceil((double)total/unit);
		int viewPage = vo.getViewPage();
		int lastPage = (int)Math.ceil(((double)viewPage/(double)cntPage)*unit);
		
		int startIndex = (viewPage - 1) * unit + 1;
		int endIndex = startIndex + (unit - 1);
		
		int startRowNo = total - (viewPage-1)*unit;
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		List<Community> list = mapper.communityList(vo);
		
		model.addAttribute("unit", unit);
		model.addAttribute("list", list);
		model.addAttribute("startRowNo", startRowNo);
		model.addAttribute("total", total);
		model.addAttribute("totalPage", totalPage);
		return "communityList";
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
		return "redirect:/communityList.do";
	}
	
	// 선택한 community로 이동
	@RequestMapping("communityContent.do/{article_seq}")
	public String communityContent(Model model, @PathVariable("article_seq") int article_seq) {
		Community vo = mapper.communityContent(article_seq);		
		System.out.println("제목 : " + vo.getArticle_title());
		model.addAttribute("community", vo);		
		return "communityContent";
	}
	
	// community 삭제
	@RequestMapping("/communityDelete.do")
	public String communityDelete( @PathVariable("article_seq") int article_seq) {
		System.out.println("번호 : " + article_seq);
		mapper.communityDelete(article_seq);		
		return "redirect:/communityList.do";
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
		return "redirect:/communityList.do";
	}
	
		
}