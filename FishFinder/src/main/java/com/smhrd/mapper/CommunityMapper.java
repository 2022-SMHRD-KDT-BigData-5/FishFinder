package com.smhrd.mapper;

import java.util.List;

import com.smhrd.domain.Community;

public interface CommunityMapper {

	public List<Community> communityList(Community vo);
	
	public int communityInsert(Community vo);
	
	public Community communityContent(int article_seq);
	
	public int communityDelete(int article_seq);
	
	public int communityUpdate(Community vo);
	
	public int communityCntUpdate(Community vo);
	
	public int selectCommunityTotal(Community vo);
}
