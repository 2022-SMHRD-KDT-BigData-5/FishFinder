package com.smhrd.web;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.smhrd.domain.userhistory;
import com.smhrd.domain.userinfo;
import com.smhrd.mapper.userhistoryMapper;
import com.smhrd.mapper.userinfoMapper;

@Controller //어노테이션,, 이 파일이 POJO라는것을 알 수 있도록 지정
public class userinfoCon {

	// DI(dependency injection), 의존성 작업
	@Autowired // 메모리에 있는 객체 넣기
	HttpSession session;
	@Autowired
	userinfoMapper um;
	@Autowired
	KakaoService ks;
	@Autowired
	userhistoryMapper hm;
	
	@RequestMapping("/")
	public String test() {
		

		return "join";
	}
//	@RequestMapping("/index")
//	public String index() {
//		
//
//		return "index";
//	}
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String testloginsuc(@RequestParam(value = "code", required = false) String code,Model model) throws Exception {
		
		// 코드 확인
		System.out.println("#########" + code);
		
		// 토큰 확인
		String access_Token = ks.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		
		// 사용자 정보 확인
		userinfo userInfo = ks.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.getKakao_name());
		System.out.println("###email#### : " + userInfo.getKakao_email());
		
		// session객체에 담긴 정보를 초기화
		session.invalidate();
		// 닉네임과 이메일, 토큰 session객체
		session.setAttribute("kakaoN", userInfo.getKakao_name());
		session.setAttribute("kakaoE", userInfo.getKakao_email());
		session.setAttribute("access_Token", access_Token);
		// jsp에서 ${sessionScope.kakaoN}
		
		return "index";
    }
	
	@RequestMapping("/message")
	public String message() {
		return "message";
	}
	
	@RequestMapping("/historyList/{user_num}")
	public String historyList(Model model, @PathVariable("user_num") int user_num) {
		userhistory list = (userhistory)hm.userhistory(user_num);
		model.addAttribute("list",list);
		return "historyList";
	}
	
	@PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file, String kakaoE) {
 
        System.out.println("파일 이름 : " + file.getOriginalFilename());
        System.out.println("파일 크기 : " + file.getSize());
        System.out.println("사용자 이메일 : " + kakaoE);
        // 데이터 베이스에 정보를 저장하는 건
        // 이렇게 file의 get 메소드를 활용해 필요한 정보들을 가져오고 
        // 그걸 DTO에 담아 insert하면 된다. 
        // 간단한거니 후의 과정은 생략하고 파일로 서버에 저장하는 걸 보자면
        userinfo kakaoEVo= new userinfo(kakaoE);
        userinfo uvo = um.KakaoUser(kakaoEVo);
        
        int user_num = uvo.getUser_num();
        String fish_img = "c:/tmp/"+file.getOriginalFilename();
        
        userhistory hvo = new userhistory(user_num, fish_img);
        hm.historyInsert(hvo);

        try (
                // 맥일 경우
                // FileOutputStream fos = new FileOutputStream("/tmp/" +file.getOriginalFilename());
                
        		// 윈도우일 경우
                FileOutputStream fos = new FileOutputStream("c:/tmp/" + file.getOriginalFilename());
        		
                // 파일 저장할 경로 + 파일명을 파라미터로 넣고 fileOutputStream 객체 생성하고
                InputStream is = file.getInputStream();) {
                // file로 부터 inputStream을 가져온다.
            
            int readCount = 0;
            byte[] buffer = new byte[2048];
            // 파일을 읽을 크기 만큼의 buffer를 생성하고
            // ( 보통 1024, 2048, 4096, 8192 와 같이 배수 형식으로 버퍼의 크기를 잡는 것이 일반적이다.)
            
            while ((readCount = is.read(buffer)) != -1) {
                //  파일에서 가져온 fileInputStream을 설정한 크기 (1024byte) 만큼 읽고
                
                fos.write(buffer, 0, readCount);
                // 위에서 생성한 fileOutputStream 객체에 출력하기를 반복한다
            }
        } catch (Exception ex) {
            throw new RuntimeException("file Save Error");
        }
 
        return "base";
    }

	
	
	
	

	
	
	
}





