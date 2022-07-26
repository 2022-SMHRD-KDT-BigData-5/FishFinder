package com.smhrd.mapper;

import com.smhrd.domain.userhistory;

public interface userhistoryMapper {

	
	public userhistory userhistory(int user_num);
	
	public int historyInsert(userhistory vo);
	
	public int last_insert_id();
	
	public userhistory historyPk(int his_seq);
	
	
}
