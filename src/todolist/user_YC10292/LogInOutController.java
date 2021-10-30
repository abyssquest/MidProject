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
	UserService userService;
	
	// 로그인 폼
	@RequestMapping(value = "/login.do" , method = RequestMethod.GET)
	public String LogIn() {
		return "login"; // 로그인 폼 요청시 views 에 있는 login.jsp 요청.
	}
	
	// 로그인 처리
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public String LogIn(UserVO vo , HttpSession session) {
		
		if(vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalArgumentException("아이디를 반드시 입력해야 합니다.");
		}
		
		UserVO search = new UserVO();
		search.setId((String)session.getAttribute("id"));
		
		UserVO check = userService.getUserService(search);
		if((vo.getPassword()!=null) && (vo.getPassword().equals(check.getPassword()))) {
			session.setAttribute("id", vo.getId());
			return "redirect:home.me";
		}else {
			return "redirect:login.me";
		}
	}
	
	// 로그아웃
	public String LogOut(HttpSession session) {
		session.invalidate(); // 로그아웃 처리.
		
		return "redirect:home.me"; 
		
	}
}
