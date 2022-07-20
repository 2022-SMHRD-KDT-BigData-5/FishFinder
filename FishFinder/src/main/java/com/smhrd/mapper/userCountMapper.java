package com.smhrd.mapper;

import com.smhrd.domain.Visit;

public interface userCountMapper {
	
	public int setTotalCount(Visit vo);
	
	public int getTotalCount();
	
	public int getTodayCount();
	
	
}
