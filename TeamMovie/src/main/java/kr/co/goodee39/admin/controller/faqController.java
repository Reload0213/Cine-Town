package kr.co.goodee39.admin.controller;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faq")
public class faqController {

	@GetMapping("/faqMain")
	public String faqMain(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/faq/faqMain";
	}
}
