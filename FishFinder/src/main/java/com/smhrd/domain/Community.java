package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Community {

	private int article_seq;	
	private String article_title;
	@NonNull
	private String article_content;
	@NonNull
	private String article_date;
	private int user_num;
	private String article_file;
	private String article_file2;	
	private int article_cnt;
	private int article_report;

	private int viewPage = 1;
	private int startIndex = 1;
	private int endIndex = 10;
	
}
