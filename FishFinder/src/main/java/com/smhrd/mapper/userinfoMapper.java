package com.smhrd.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.smhrd.domain.userinfo;

@MapperScan
public interface userinfoMapper {
	
	
	public List<userinfo> userList();
	
	public userinfo KakaoUser(userinfo vo);
	
	public int KakaoJoin(userinfo vo);

}
