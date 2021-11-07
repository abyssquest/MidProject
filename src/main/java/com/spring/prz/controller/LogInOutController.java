package com.spring.prz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.user.service.UserService;
import com.spring.biz.user.vo.UserVO;

@Controller
public class LogInOutController {
	@Autowired
	UserService service;
	
	// 로그인 폼
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String logInForm() {
		return "user/login";
	}
	
	// 로그인 처리
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String logInProc(UserVO vo , HttpSession session) {
		String result = null;
		UserVO dbVO = null;
		
		if(vo.getId() == null || vo.getId().equals("")) {
			System.out.println("아이디를 반드시 입력해야 합니다");
		} else { 
			dbVO = service.selectOne(vo);
		}
		
		if ((vo.getPassword() != null) && (vo.getPassword().equals(dbVO.getPassword()))) {
			System.out.println("로그인 성공");
			session.setAttribute("id", vo.getId());
		} else {
			System.out.println("로그인 실패");
		}
		
		result = "toIndex";
		return result;
	}
	
	// 로그아웃
	@RequestMapping("/logout.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "toIndex"; 
	}
}