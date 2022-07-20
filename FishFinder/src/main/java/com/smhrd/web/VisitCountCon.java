package com.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;

import com.smhrd.domain.Visit;
import com.smhrd.mapper.userCountMapper;

public class VisitCountCon {
	
	@Autowired
	userCountMapper mapper;
	private static VisitCountCon instance;
	
	// 싱글톤 패턴
	private VisitCountCon() {}
	
	public static VisitCountCon getInstance() {
		if(instance == null) {
			instance = new VisitCountCon();
		}
		return instance;
	}
	
	// 날짜값 추가 
	public void setTotalCount(Visit vo) {
		mapper.setTotalCount(vo);
	}
	
	// 총 방문자수 증가
	public int getTotalCount() {
		int totalCount = 0;
		totalCount = mapper.getTotalCount();
		return totalCount;
		}
	
	// 오늘 방문자 수
	public int getTodayCount() {
		int todayCount = 0;
		todayCount = mapper.getTodayCount();
		return todayCount;
		}
	
}
