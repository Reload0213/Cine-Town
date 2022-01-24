package kr.co.goodee39.user.controller;

import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.user.service.UserService;
import kr.co.goodee39.user.vo.UserVO;

@Controller
@RequestMapping("/user")
public class userController {

	@Autowired
	private UserService userService;


	@GetMapping("/myPage")
	public String getTest() {

		return "user/myPage";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//정민
	// 김정민 작업 중
	// 로그인 페이지로 이동
	@GetMapping("/signin")
	public String getSingin() {

		return "user/signin";
	}

	// 회원가입 페이지로 이동
	@GetMapping("/signup")
	public String getSingup(UserVO vo) {

		return "user/signup";
	}
	
	//회원가입 post
	@PostMapping("/signupSuccess")
	public String signupResult(UserVO vo) {
		userService.setUser(vo);
		
		
		return "user/signupSuccess";
	}
	
	// 아이디/비번찾기 페이지로 이동
	@GetMapping("/findUser")
	public String getFinduser() {

		return "user/findUser";
	}

	// 아이디/비번찾기 페이지로 이동
	// 데이터 넣어서 post로 바꿔야 함
	@GetMapping("/findUserSuccess")
	public String getFindUserSuccess() {

		return "user/findUserSuccess";
	}

//	// 로그아웃
	/*
	 * @GetMapping("/signout") public String signout(HttpSession session) throws
	 * Exception { service.signout(session); // 세션 정보를 제거
	 * 
	 * return "redirect:/"; }
	 */
}
