package com.spring.prz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.user.service.UserService;
import com.spring.biz.user.vo.UserVO;

@Controller
public class UserLogController {
	@Autowired
	UserService service;
	
	// 로그인 폼
	@RequestMapping(value = "/login.do" , method = RequestMethod.GET)
	public String logInForm() {
		System.out.println("컨트롤러 맵핑 logInForm 확인");
		return "testFolder/login";
	}
	
	// 로그인 처리
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public String logInProc(UserVO vo , HttpSession session) {
		System.out.println("컨트롤러 맵핑 logInProc 확인");
		
		if(vo.getId() == null || vo.getId().equals("")) {
			System.out.println("아이디를 반드시 입력해야 합니다");
			// throw new IllegalArgumentException("아이디를 반드시 입력해야 합니다.");
			// 아직 예외 창 안만들어서 유보
		}
		
		UserVO savedUser = service.selectOne(vo); // 입력된 id에 맞는 유저 정보 불러오기
		
		if ((vo.getPassword() != null) && (vo.getPassword().equals("test"/* savedUser.getPassword() */))) {
			System.out.println("로그인 성공");
			session.setAttribute("id", vo.getId());
			
			System.out.println("세션 저장 확인"); // 테스트용
			System.out.println(session.getAttribute("id")); // 테스트용
		} else {
			System.out.println("로그인 실패");
		}
		
		return "toIndex";
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logOut(HttpSession session) {
		System.out.println("컨트롤러 맵핑 logOut 확인");
		
		session.invalidate();
		// id속성 하나만 없앨 수 있으면 좋겠지만
		// 아직 필요없으면 미루자
		return "toIndex"; 
	}
}