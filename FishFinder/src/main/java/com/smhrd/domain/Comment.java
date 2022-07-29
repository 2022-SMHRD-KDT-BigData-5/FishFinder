package com.smhrd.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;


@Data
@AllArgsConstructor
@NoArgsConstructor // 기본 생성자
public class Comment {

	private int comment_seq;
	private int article_seq;
	private int user_num;
	private String comment_content;
	private String comment_date;
	
}
