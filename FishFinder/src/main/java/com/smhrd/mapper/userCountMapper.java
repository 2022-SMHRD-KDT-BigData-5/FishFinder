package com.smhrd.mapper;

import com.smhrd.domain.VisitSessionListener;

public interface userCountMapper {
	
	public int setTotalCount(VisitSessionListener vo);
	
	public VisitSessionListener getTotalCount(int totalCount);
	
	public VisitSessionListener getTodayCount(int todayCount);
	
	
}
