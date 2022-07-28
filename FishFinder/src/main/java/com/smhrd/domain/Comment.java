package com.smhrd.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;


@Data
@AllArgsConstructor
public class Comment {

	private int comment_seq;
	private int article_seq;
	private int user_num;
	private String comment_content;
	private Timestamp comment_date;
	
}
