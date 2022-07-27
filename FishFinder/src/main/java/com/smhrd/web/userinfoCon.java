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
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
	@Autowired
	imageSendService is;
	
	@RequestMapping("/")
	public String test() {
		

		return "join";
	}
	@RequestMapping("/admin")
	public String admin() {
		

		return "admin";
	}
	@RequestMapping("/board")
	public String board() {
		

		return "board";
	}
	
	@RequestMapping("/index")
	public String index() {
		

		return "index";
	}
	@RequestMapping("/listPaging")
	public String listPaging() {
		

		return "listPaging";
	}
	@RequestMapping("/qna_write")
	public String qna_write() {
		

		return "qna_write";
	}
	@RequestMapping("/qna")
	public String qna() {
		

		return "qna";
	}

	@RequestMapping("/viewList")
	public String viewList() {
		

		return "viewList";
	}
	@RequestMapping("/writer")
	public String writer() {
		

		return "writer";
	}


	
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
		session.setAttribute("user_num", userInfo.getUser_num());
		session.setAttribute("kakaoN", userInfo.getKakao_name());
		session.setAttribute("kakaoE", userInfo.getKakao_email());
		session.setAttribute("user_type", userInfo.getUser_type());
		session.setAttribute("access_Token", access_Token);
		
		// jsp에서 ${sessionScope.kakaoN}
		
		return "index";
    }
	
	@RequestMapping(value="/logout")
	public String access(HttpSession session) throws IOException {
		
		KakaoService conn = KakaoService.getInstance();
		String access_Token = (String)session.getAttribute("access_Token");
		
		String access_token = (String)session.getAttribute("access_token");
		Map<String, String> map = new HashMap<String, String>();
		map.put("Authorization", "Bearer "+ access_Token);
		
		String result = conn.HttpPostConnection("https://kapi.kakao.com/v1/user/logout", map).toString();
		System.out.println(result);
		
		return "redirect:/";
	}
	
	
	
	// AI분석 후, 히스토리에서 접근
	@RequestMapping("/result/{his_seq}")
	public String result(@PathVariable("his_seq") int his_seq, Model model) {
		userhistory his_vo = hm.historyPk(his_seq);
		model.addAttribute("his_vo",his_vo);
		
		System.out.println(his_vo.getResult());
		
		return "result";
	}
	
	//내 히스토리 보기
	@RequestMapping("/history")
	public String history(Model model) {
		int user_num = (int) session.getAttribute("user_num");
		List<userhistory> his_list = hm.userhistory(user_num);
		model.addAttribute("his_list", his_list);
		return "history";
	}
	
	

	
	
	
}





