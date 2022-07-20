package com.smhrd.web;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.smhrd.domain.Visit;

public class VisitSessionListener implements HttpSessionListener {
	
	@Override
    public void sessionCreated(HttpSessionEvent arg0) {
 
        // DAO 객체 생성
		VisitCountCon visit = VisitCountCon.getInstance();
        Visit vo = new Visit();
		
        // 전체 방문자 수 +1
		visit.setTotalCount(vo);
         
        // 오늘 방문자 수
        int todayCount = visit.getTotalCount();
         
        // 전체 방문자 수
        int totalCount = visit.getTodayCount();
         
        HttpSession session = arg0.getSession();
         
        // 세션 속성에 담아준다.
        session.setAttribute("totalCount", totalCount); // 전체 방문자 수
        session.setAttribute("todayCount", todayCount); // 오늘 방문자 수
         
    }

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		
	}
	
}

