package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import com.smhrd.domain.Board;

// 추상메서드만 가지는 interface로 구현
public interface BoardMapper {
	
	// 추상메서드
	// mapper.xml의 태그에 주는 id == 메서드 이름
	public List<Board> boardList(); //selectList()
	
	public int boardInsert(Board vo);
	
	public Board boardContent(int idx); // selectOne()
	
	// insert/delete/update --> int
	// 어노테이션을 이용한 sql문 작성
	// 어노테이션 이름 == 사용하고자 하는 문장 이름
	// @Delete("SQL쿼리")
	// 추상매서드 <---mapping(1:1)---> SQL쿼리
	// 어노테이션 사용시에는 mapper.xml에는 적으면 안됨
	@Delete("delete from board where idx = #{idx}")
	public int boardDelete(int idx);
	
	public int boardUpdate(Board vo);
}
