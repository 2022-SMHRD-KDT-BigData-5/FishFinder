package com.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.smhrd.mapper.userCountMapper;

@Controller
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
	
	// 총 방문자수 증가
	public int getTotalCount(int totalCount) {
		mapper.getTotalCount(totalCount);
		return totalCount;
		}
	
	// 오늘 방문자 수
	public int getTodayCount(int todayCount) {
		mapper.getTodayCount(todayCount);
		return todayCount;
		}
	
}
