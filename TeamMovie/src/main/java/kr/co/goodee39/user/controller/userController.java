package kr.co.goodee39.user.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	// 로그인 페이지로 이동
	@GetMapping("/signin")
	public String getSingin(@ModelAttribute("userVO") UserVO vo) {

		return "user/signin";
	}

	// 로그인 post
	@PostMapping("/loginComplete")
	public String loginComplete(@ModelAttribute("userVO") UserVO vo, HttpSession session) {
		System.out.println("loginComplete실행");
		return userService.goLoginService(vo, session);

	}

	// 회원가입 페이지로 이동
	@GetMapping("/signup")
	public String getSingup(UserVO vo) {

		return "user/signup";
	}

	// 회원가입 post
	@PostMapping("/signupSuccess")
	public String signupResult(@ModelAttribute("userVO") UserVO vo) {
		userService.setUser(vo);

		return "user/signupSuccess";
	}

	// 아이디/비번찾기 페이지로 이동
	@GetMapping("/findUser")
	public String getFinduser(UserVO vo) {

		return "user/findUser";
	}



	
	// 아이디 중복 검사
	@PostMapping("/memberIdChk")
	@ResponseBody
	public ResponseEntity<Integer> memberIdChkPOST(@RequestBody UserVO vo, HttpSession session) throws Exception {
		
		System.out.println(vo.getUserId());
		
		int result = userService.idCheck(vo.getUserId());
		
		System.out.println(result);
	
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		return entity;
	}
	
	// 이름 중복 검사
	@PostMapping("/memberNameChk")
	@ResponseBody
	public ResponseEntity<Integer> memberNameChkPOST(@RequestBody UserVO vo, HttpSession session) throws Exception {
		
		System.out.println(vo.getUserName());
		
		int result = userService.nameCheck(vo.getUserName());
		
		System.out.println(result);
	
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		return entity;
	}
	
	// 이메일 중복 검사
	@PostMapping("/memberEmailChk")
	@ResponseBody
	public ResponseEntity<Integer> memberEmailChkPOST(@RequestBody UserVO vo, HttpSession session) throws Exception {
		
		System.out.println(vo.getUserEmail());
		
		int result = userService.emailCheck(vo.getUserEmail());
		
		System.out.println(result);
	
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		return entity;
	}


	// 로그아웃 컨트롤러
	@GetMapping("/signout")
	public String signout(HttpSession session) {
		System.out.println("signout(로그아웃)실행");
		session.invalidate();
		return "redirect:/";
	}
	
	//비번찾기
	@PostMapping("/findPw")
	public String findPw(@ModelAttribute("userVO") UserVO vo) {
		UserVO vo1 = userService.findPw(vo);
		vo.setUserPw(vo1.getUserPw());
		
		System.out.println("비번 찾기 controller 진입");
		System.out.println("controller jsp id"+vo.getUserId());
		System.out.println("controller jsp name"+vo.getUserName());
		return "user/findPwSuccess";
	}
	
	//아이디 찾기
	@PostMapping("/findId")
	public String findId(@ModelAttribute("userVO") UserVO vo) {
		UserVO vo1 = userService.findId(vo);
		vo.setUserId(vo1.getUserId());
		
		System.out.println("아이디 찾기 controller 진입");
		System.out.println("controller jsp name"+vo.getUserName());
		System.out.println("controller jsp email"+vo.getUserEmail());
		return "user/findIdSuccess";
	}
	


}
