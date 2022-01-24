package kr.co.goodee39.interview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class interviewController {

	@GetMapping("interviewDetail")
	public String goInterviewDetail() {
		
		return "interview/interviewDetail";
	}
}
