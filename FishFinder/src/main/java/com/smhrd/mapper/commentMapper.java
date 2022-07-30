package com.smhrd.mapper;

import java.util.List;

import com.smhrd.domain.Comment;

public interface commentMapper {
	
	// 댓글 쓰기
	public void commentInsert(Comment cvo);
	// 해당 게시물의 댓글 보기 -> CommunitCon에 같이 씀
	public List<Comment> commentList(int article_seq);
	// 댓글 수
	public int commentCount(int article_seq);
	// 댓글 삭제
	public int commentDelete(int comment_seq);
	// 댓글 수정
	public void commentUpdate(Comment cvo);
	
}
