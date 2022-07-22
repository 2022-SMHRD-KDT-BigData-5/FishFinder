package com.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.smhrd.domain.Visit;
import com.smhrd.mapper.userCountMapper;

@Service
public class VisitCount {
	
	@Autowired
	userCountMapper mapper;
	private static VisitCount instance;
	
	// 싱글톤 패턴
	private VisitCount() {}
	
	public static VisitCount getInstance() {
		if(instance == null) {
			instance = new VisitCount();
		}
		return instance;
	}
	
	// 날짜값 추가 
	public void setTotalCount( Model model, Visit vo) {
		model.addAttribute("getcount", SessionUserCounter.getCount());
	}
	
	// 총 방문자수 증가
	public int getTotalCount( Model model, Visit vo) {
		int totalCount = 0;
		totalCount = mapper.getTotalCount(vo);
		return totalCount;
	}
	
	// 오늘 방문자 수
	public int getTodayCount( Model model, Visit vo) {
		int todayCount = 0;
		todayCount = mapper.getTodayCount(vo);
		model.addAttribute("todayCount",todayCount);
		return todayCount;
	}
	
}
