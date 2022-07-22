package com.smhrd.mapper;


import com.smhrd.domain.Visit;

public interface userCountMapper {
	
	public int setTotalCount(Visit vo);
	
	public int getTotalCount(Visit vo);
	
	public int getTodayCount(Visit vo);

	
	
}
