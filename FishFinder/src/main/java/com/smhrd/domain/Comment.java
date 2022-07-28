package com.smhrd.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;


@Data
@AllArgsConstructor
public class Comment {

	private int comment_seq;
	private int article_seq;
	private int user_num;
	@NonNull
	private String comment_content;
	private String comment_date;
	
}
