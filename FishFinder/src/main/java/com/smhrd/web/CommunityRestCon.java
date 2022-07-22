package com.smhrd.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.domain.Community;
import com.smhrd.mapper.CommunityMapper;

@RestController  // Commnunity의 ajax전담 Con
public class CommunityRestCon {

	@Autowired
	CommunityMapper mapper;	
	
	@RequestMapping("/communityCntUpdate.do") // 커뮤니티 조회수 수정
	public int communityCntUpdate(Community vo){
		int cnt = mapper.communityCntUpdate(vo);
		return cnt;
	}
	
	
}
