package kr.co.goodee39.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/aboutUs")
public class aboutUsController {
	
	@GetMapping("/aboutUsMain")
	public String aboutUsMain(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/aboutUs/aboutUsMain";
	}
}
