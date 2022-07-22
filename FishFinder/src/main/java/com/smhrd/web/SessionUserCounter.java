package com.smhrd.web;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.smhrd.domain.Visit;
import com.smhrd.mapper.userCountMapper;

public class SessionUserCounter implements HttpSessionListener {
  private static Logger logger = LoggerFactory.getLogger(SessionUserCounter.class);
  
  //  총 접속자 수
  public static int count;
  
  @Autowired
  userCountMapper mapper;
  
  Visit vo = new Visit();
  
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
    	mapper.setTotalCount(vo);
    }else {
    	logger.error("\n\t세션실패ㅠㅠ : {}, TOTAL ACCESSER : {}", session.getId(), count);
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