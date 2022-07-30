package com.smhrd.web;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class LoginUserCounter implements HttpSessionListener {
	private int userCount;
	
	
	public void sessoinCreateds(HttpSessionEvent se) {
		++userCount;
		System.out.println("생성된  세션 : " + se.getSession().getId());
		System.out.printf("생성된  세션 :  %d \n", userCount);
	}
	
	
	public void sessoinDestroyed(HttpSessionEvent se) {
		--userCount;
		System.out.println("생성된  세션 : " + se.getSession().getId());
		System.out.printf("생성된  세션 :  %d \n", userCount);
	}


	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		
	}

	
}

