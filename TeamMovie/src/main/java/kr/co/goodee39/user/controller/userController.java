package kr.co.goodee39.user.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
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
		int result = userService.idCheck(vo.getUserId());
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		return entity;
	}

	// 이름 중복 검사
	@PostMapping("/memberNameChk")
	@ResponseBody
	public ResponseEntity<Integer> memberNameChkPOST(@RequestBody UserVO vo, HttpSession session) throws Exception {

		int result = userService.nameCheck(vo.getUserName());
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		return entity;
	}

	// 이메일 중복 검사
	@PostMapping("/memberEmailChk")
	@ResponseBody
	public ResponseEntity<Integer> memberEmailChkPOST(@RequestBody UserVO vo, HttpSession session) throws Exception {
		int result = userService.emailCheck(vo.getUserEmail());
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

	// 비번찾기
	@PostMapping("/findPw")
	public String findPw(@ModelAttribute("userVO") UserVO vo, HttpServletResponse response) throws IOException {
		UserVO vo1 = userService.findPw(vo);

		String path = "";
		if (vo1 == null) {

			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<script language='javascript'>");
			out.println("alert('일치하는 정보가 없습니다.'); history.go(-1);"); // 영주님의 영혼이 깃든 곳
			out.println("</script>");
			out.flush();

		} else {
			vo.setUserPw(vo1.getUserPw());
			System.out.println("비번 찾기 controller 진입");
			System.out.println("controller jsp id" + vo.getUserId());
			System.out.println("controller jsp name" + vo.getUserName());
			path = "user/findPwSuccess";
		}
		return path;
	}

	// 아이디 찾기
	@PostMapping("/findId")
	public String findId(@ModelAttribute("userVO") UserVO vo, HttpServletResponse response) throws IOException {
		UserVO vo1 = userService.findId(vo);

		String path = "";
		if (vo1 == null) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<script language='javascript'>");
			out.println("alert('일치하는 정보가 없습니다.'); history.go(-1);"); // 영주님의 영혼이 깃든 곳
			out.println("</script>");
			out.flush();
		} else {
			vo.setUserId(vo1.getUserId());
			path = "user/findIdSuccess";
		}
		return path;
	}

	// myPage로 이동
	@GetMapping("/myPage")
	public String getMyPage(UserVO vo) {

		return "user/myPage";
	}

	// 정보 수정 보여주기
	@GetMapping("/userFix")
	public String userFix(UserVO vo) {
		userService.selectUserOne(vo);
		return "user/userFix";

	}

	@PostMapping("/userPwUpdate")
	public ResponseEntity<UserVO> userPwUpdate(@RequestBody UserVO vo) {

		System.out.println("controller getuserNum" + vo.getUserNum());
		System.out.println("controller get useremail" + vo.getUserEmail());
		userService.updateUser(vo);

		ResponseEntity<UserVO> entity = new ResponseEntity<UserVO>(vo, HttpStatus.OK);

		return entity;

	}

	// 정보 수정 데이터 넘기기
	@GetMapping("/userFixComplete")
	public String userFixComplete(UserVO vo, Model model, @RequestParam(defaultValue = "") String userName) {
		userService.updateUser(vo);
		return "user/myPage";

	}
	
	//회원 탈퇴

	

}
