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
import com.smhrd.domain.questionBoard;
import com.smhrd.mapper.questionMapper;

@Controller
public class questionCon {

	@Autowired
	questionMapper qmapper;
	
	@RequestMapping("/questionview") // 질문 리스트
	public String questionList(questionBoard qvo, Model model) {
		List<questionBoard> qlist = qmapper.questionList(qvo);		
		model.addAttribute("qlist", qlist);
		return "questionList";
	}
	
	@RequestMapping("/questionViewCount") // 질문 조회수 수정
	public int questionViewCount(questionBoard qvo){
		int cnt = qmapper.questionViewCount(qvo);
		return cnt;
	}
	
	
	
	
}
