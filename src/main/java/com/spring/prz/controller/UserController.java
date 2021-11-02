package com.spring.prz.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.image.vo.ImageVO;
import com.spring.biz.user.service.UserService;
import com.spring.biz.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired UserService service;
	
	@RequestMapping("testUser.me")
	public String testUser() {
		UserVO vo = new UserVO();
		vo.setId("hong"); // 테스트용
		
		System.out.println("UserService 작동 테스트");
		service.insert(vo);
		service.selectList(vo);
		service.selectOne(vo);
		service.update(vo);
		service.delete(vo);
		
		return "testFolder/testUser";
	}
	
	// 계정 추가 페이지 : 회원 가입 페이지
	@RequestMapping(value = "insertUser.do", method = RequestMethod.GET)
	public String insertUserForm() {
		System.out.println("컨트롤러 맵핑 insertUserForm 확인");
		return "user/insertUser2";
	}
	
	// 계정 추가 자바 작업
	@RequestMapping(value = "insertUser.do", method = RequestMethod.POST)
	public String insertUserProc(UserVO vo) {
		System.out.println("컨트롤러 맵핑 insertUserProc 확인");
		
		service.insert(vo);
		return "redirect:login.do";
	}
	
	
	// 계정 리스트 조회 : 관리자 계정이나 쓰겠네
	@RequestMapping("getUserList.do")
	public String getUserList(Model model, UserVO vo) {
		System.out.println("컨트롤러 맵핑 getUserList 확인");
		
		List<UserVO> list = service.selectList(vo);
		model.addAttribute("userList", list);
		
		return "user/getUserList";
	}
	
	// 계정 조회 : 회원 정보 조회
	@RequestMapping("getUser.do")
	public String getUser(Model model, UserVO vo) {
		System.out.println("컨트롤러 맵핑 getUser 확인");
		
		UserVO user = service.selectOne(vo);
		model.addAttribute("user", user);
		
		return "user/getUser";
	}
	
	// 계정 수정 폼 페이지
	@RequestMapping(value = "updateUser.do", method = RequestMethod.GET)
	public String updateUserForm() {
		System.out.println("컨트롤러 맵핑 updateUserForm 확인");
		return "user/updateUser";
	}
	
	// 계정 수정 자바 작업
	@RequestMapping(value = "updateUser.do", method = RequestMethod.POST)
	public String updateUserProc(UserVO vo) {
		System.out.println("컨트롤러 맵핑 updateUserProc 확인");
		
		return "toIndex";
	}
	
	// 계정 삭제 : 회원 탈퇴
	@RequestMapping("deleteUser.do")
	public String deleteUser(UserVO vo, HttpSession session) {
		System.out.println("컨트롤러 맵핑 deleteUser 확인");
		
		UserVO chkVO = new UserVO();
		chkVO.setId((String)session.getAttribute("id"));
		
		UserVO dbVO = service.selectOne(chkVO);
		
		if(dbVO.getPassword() == vo.getPassword()) {
			service.delete(vo);
		} else {
			System.out.println("잘못된 접근 경로입니다.");
		}
		
		return "toIndex";
	}
	
	// 로그인 폼
	@RequestMapping(value = "login.do" , method = RequestMethod.GET)
	public String logInForm() {
		System.out.println("컨트롤러 맵핑 logInForm 확인");
		return "user/login";
	}
	
	// 로그인 처리
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public String logInProc(UserVO vo , HttpSession session) {
		System.out.println("컨트롤러 맵핑 logInProc 확인");
		
		if(vo.getId() == null || vo.getId().equals("")) {
			System.out.println("아이디를 반드시 입력해야 합니다");
			// throw new IllegalArgumentException("아이디를 반드시 입력해야 합니다.");
			// 아직 예외 창 안만들어서 유보
			vo.setId("test"); // 아이디 입력 안할경우 테스트용
		} else { 
			UserVO dbVO = service.selectOne(vo);
		}
		
		if ((vo.getPassword() != null) && (vo.getPassword().equals("test"/* savedUser.getPassword() */))) {
			// 테스트용 비번 test 입력
			System.out.println("로그인 성공");
			session.setAttribute("id", vo.getId());
			
			System.out.println(session.getAttribute("id")); // 테스트용
			System.out.println("세션 저장 확인"); // 테스트용
		} else {
			System.out.println("로그인 실패");
		}
		
		return "toIndex";
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logOut(HttpSession session) {
		System.out.println("컨트롤러 맵핑 logOut 확인");
		
		// 테스트용
		System.out.println((session.getAttribute("id") != null) ?
			session.getAttribute("id") + " 로그아웃 실행" : "로그인 상태가 아닙니다");

		session.invalidate();
		// id속성 하나만 없앨 수 있으면 좋겠다
		// 바쁘니 미루고 할거 없음 하자
		
		return "toIndex"; 
	}
}