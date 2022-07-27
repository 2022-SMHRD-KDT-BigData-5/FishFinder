package com.smhrd.domain;


import java.sql.Timestamp;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Visit {
	
	private Timestamp v_date;

	public Visit(Timestamp v_date) {
		super();
		this.v_date = v_date;
	}
	
}
