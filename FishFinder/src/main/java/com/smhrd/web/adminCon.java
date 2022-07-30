package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.smhrd.mapper.userinfoMapper;
import com.smhrd.mapper.userhistoryMapper;
import com.smhrd.domain.Community;
import com.smhrd.domain.questionBoard;
import com.smhrd.domain.userhistory;
import com.smhrd.domain.userinfo;
import com.smhrd.mapper.CommunityMapper;
import com.smhrd.mapper.questionMapper;
@Controller
public class adminCon {

	@Autowired
	userinfoMapper userinfoMapper;
	@Autowired
	userhistoryMapper userhistoryMapper;
	@Autowired
	CommunityMapper CommunityMapper;
	@Autowired
	questionMapper questionMapper;
	
	
	@RequestMapping("/admin")
	public String admin() {
		
		int userinfocount = userinfoMapper.usercount();
		int userhistorycount = userhistoryMapper.userhistorycount();
		int Communitycount =  CommunityMapper.countBoard();
		int questioncount =  questionMapper.questioncount();
		

		return "admin";
	}
}
