package com.spring.prz.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.file.service.FileService;
import com.spring.biz.user.service.UserService;
import com.spring.biz.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	@Autowired
	FileService fileService;
	
	@RequestMapping(value = "insertUser.do", method = RequestMethod.GET)
	public String insertUserForm() {
		return "user/insertUser";
	}
	
	@RequestMapping(value = "insertUser.do", method = RequestMethod.POST)
	public String insertUserProc(UserVO vo, MultipartHttpServletRequest request)
			throws Exception {
		
		vo.setProfileImage(fileService.insertImage(vo, request));
		
		service.insert(vo);
		return "redirect:login.do";
	}
	
	@RequestMapping("getUserList.do")
	public String getUserList(Model model, UserVO vo) {
		List<UserVO> list = service.selectList(vo);
		model.addAttribute("userList", list);
		return "user/getUserList";
	}
	
	@RequestMapping(value = "getUser.do", method = RequestMethod.GET)
	public String getUserSelf(Model model, UserVO vo, HttpSession session) {
		vo.setId((String) session.getAttribute("id"));
		
		UserVO user = service.selectOne(vo);
		model.addAttribute("user", user);
		
		return "user/getUser";
	}
	
	// 계정 수정 폼 페이지
	@RequestMapping(value = "updateUser.do", method = RequestMethod.GET)
	public String updateUserForm(Model model, UserVO vo, HttpSession session) {
		vo.setId((String)session.getAttribute("id"));
		UserVO user = service.selectOne(vo);
		model.addAttribute("user", user);
		return "user/updateUser";
	}
	
	// 계정 수정 자바 작업
	@RequestMapping(value = "updateUser.do", method = RequestMethod.POST)
	public String updateUserProc(UserVO vo, MultipartHttpServletRequest request)
			throws Exception {
		vo.setId((String)request.getSession().getAttribute("id"));
		
		System.out.println(fileService.deleteImage(vo, request));
		vo.setProfileImage(fileService.insertImage(vo, request));
		
		service.update(vo);
		return "redirect:getUserList.do";
	}
	
	// 계정 삭제 : 회원 탈퇴 + 로그아웃
	@RequestMapping("deleteUser.do")
	public String deleteUser(UserVO vo, HttpServletRequest request) {
		vo.setId((String)request.getSession().getAttribute("id"));
		
		System.out.println(fileService.deleteImage(vo, request));
		service.delete(vo);
		request.getSession().invalidate();
		return "toIndex";
	}
	
	// 로그인 폼
	@RequestMapping(value = "login.do" , method = RequestMethod.GET)
	public String logInForm() {
		return "user/login";
	}
	
	// 로그인 처리
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public String logInProc(UserVO vo , HttpSession session) {
		String result = null;
		UserVO dbVO = null;
		
		if(vo.getId() == null || vo.getId().equals("")) {
			System.out.println("아이디를 반드시 입력해야 합니다");
			// throw new IllegalArgumentException("아이디를 반드시 입력해야 합니다.");
			// 아직 예외 창 안만들어서 유보
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
	@RequestMapping("logout.do")
	public String logOut(HttpSession session) {
		System.out.println("컨트롤러 맵핑 logOut 확인");
		
		session.invalidate();
		// id속성 하나만 없앨 수 있으면 좋겠다
		// 바쁘니 미루고 할거 없음 하자
		
		return "toIndex"; 
	}
}