package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/preview")
public class previewController {
	
		@GetMapping("/main")
		public String main() {

			return "preview/main";
		}

}
