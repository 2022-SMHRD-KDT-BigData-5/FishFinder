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
public class Community{
	
	Search search = new Search();
	
	private Integer article_seq;	
	@NonNull
	private String article_title;
	@NonNull
	private String article_content;
	@NonNull
	private String article_date;
	private int user_num;
	@NonNull
	private String user_nick;
	private String article_file;
	private String article_file2;	
	private int article_cnt;
	private int article_report;
	private int commCnt;
	
	
	private String searchType = search.getSearchType();
	private String keyword = search.getKeyword();
}
