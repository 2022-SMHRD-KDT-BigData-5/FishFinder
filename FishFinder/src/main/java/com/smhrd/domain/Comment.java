package com.smhrd.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Comment {
	
	private int comment_seq;
	private Integer article_seq;
	private int user_num;
	@NonNull
	private String user_nick;
	@NonNull
	private String comment_content;
	private Timestamp comment_date;
	
	
	
	public Comment(int user_num) {
		super();
		this.user_num = user_num;
	}
	
}
