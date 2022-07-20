package com.smhrd.mapper;

import com.smhrd.domain.userhistory;

public interface userhistoryMapper {

	
	public userhistory userhistory(int user_num);
	
	public int historyInsert(userhistory vo);
	
	
}
