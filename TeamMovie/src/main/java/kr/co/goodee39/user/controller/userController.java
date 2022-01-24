package kr.co.goodee39.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.goodee39.user.service.UserService;
import kr.co.goodee39.user.vo.UserVO;

@Controller
@RequestMapping("/user")
public class userController {
	@Autowired
	UserService userService;
	
	@GetMapping("/myPage")
	public String getTest() {

		return "user/myPage";
	}
	
	//김정민 작업 중
	//로그인 페이지로 이동
	@GetMapping("/signin")
	public String getSingin(@ModelAttribute("userVO") UserVO vo) {

		return "user/signin";
	}
	
	//회원가입 페이지로 이동
	@GetMapping("/signup")
	public String getSingup() {

		return "user/signup";
	}
	
	//회원가입 성공 시 보여질 페이지. 회원가입 성공했으니 다시 로그인 하라고 하기
	//post로 바꿔야함.
	@GetMapping("/signupSuccess")
	public String getSingupSuccess() {

		return "user/signupSuccess";
	}
	
	
	//아이디/비번찾기 페이지로 이동
	@GetMapping("/findUser")
	public String getFinduser() {

		return "user/findUser";
	}
	
	//아이디/비번찾기 페이지로 이동
	//데이터 넣어서 post로 바꿔야 함
	@GetMapping("/findUserSuccess")
	public String getFindUserSuccess() {

		return "user/findUserSuccess";
	}
	
	
	//로그인 컨트롤러
	@PostMapping("/loginComplete")
	public String loginComplete(@ModelAttribute("userVO") UserVO vo, HttpSession session) {
		System.out.println("loginComplete실행");
		return userService.goLogin(vo, session);
		
		
	}
	
	//로그아웃 컨트롤러
	@GetMapping("/signout")
	public String signout(HttpSession session) {
		System.out.println("signout(로그아웃)실행");
		session.invalidate();
		return "redirect:/";
	}
	
	// 아이디 중복 검사
	@PostMapping("/memberIdChk")
	@ResponseBody
	public String memberIdChkPOST(String userId) throws Exception{
		
		
		int result = userService.idCheck(userId);
		
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}		
		
	} 
	
	
	


}
