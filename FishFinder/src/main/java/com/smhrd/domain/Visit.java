package com.smhrd.domain;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Visit {
	
	private String v_date;

	public Visit(String v_date) {
		super();
		this.v_date = v_date;
	}
}
