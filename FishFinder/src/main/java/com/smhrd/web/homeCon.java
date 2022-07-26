package com.smhrd.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.mapper.homeMapper;

@Controller
public class homeCon {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	homeMapper homeM;
	
	@RequestMapping("/home")
	public void home() {
		
	}
	

}
