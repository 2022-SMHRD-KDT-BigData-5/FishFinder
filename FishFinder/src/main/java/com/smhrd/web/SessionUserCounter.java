package com.smhrd.web;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.smhrd.domain.Visit;
import com.smhrd.domain.userinfo;
import com.smhrd.mapper.userCountMapper;

public class SessionUserCounter implements HttpSessionListener {
  private static Logger logger = LoggerFactory.getLogger(SessionUserCounter.class);
  
  //  총 접속자 수
  public static int count;
  
  @Autowired
  userCountMapper mapper;
  Visit vo = new Visit();
  userinfo userInfo= new userinfo(); 
  
  public static int getCount() {
    return count;
  }

  @Override
  public void sessionCreated(HttpSessionEvent event) {
    //  세션이 생성될 때 세션객체를 꺼내옴.
    HttpSession session = event.getSession();
    if(session.getId() != null) {
    	count ++;
    	logger.error("\n\tSESSION CREATED : {}, TOTAL ACCESSER : {}", session.getId(), count);
    	// mapper.getTotalCount();
    	if(event.getSession().isNew()) {
    		execute(event);
    	}
    }else {
    	logger.error("\n\t세션실패ㅠㅠ : {}, TOTAL ACCESSER : {}", session.getId(), count);
    }
  }
  
  private void execute(HttpSessionEvent event) {
	  
	  VisitCount count = VisitCount.getInstance();
	  
	  try {
		  	System.out.println("트라이 들어옴");
		  	// 전체 방문자 증가
		  	count.setTotalCount();
		  	System.out.println("전체 방문자");
		  	// 총 방문자 수 증가
		  	int totalCount = count.getTotalCount();		  	
		  	// 오늘 방문자 수 증가
		  	int todayCount = count.getTodayCount();
		  	
		  	HttpSession session = event.getSession();
		  	// 방문자수 세션
		  	session.setAttribute("totalCount", totalCount);
		  	session.setAttribute("todayCount", todayCount);
		  	System.out.println("====================카운트 성공==================");
	  } catch(Exception e){
		  System.out.println("================방문자 카운트 오류=================");
		  e.printStackTrace();
	  }
  }
    

  @Override
  public void sessionDestroyed(HttpSessionEvent event) {
    // 세션이 소멸될 때
    count--;
    if( count < 0 ) count = 0;
    
    HttpSession session = event.getSession();
    logger.error("\n\tSESSION DESTROYED : {}, TOTAL ACCESSER : {}", session.getId(), count);
  }
  
}