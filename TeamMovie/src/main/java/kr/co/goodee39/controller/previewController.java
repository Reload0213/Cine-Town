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
		
		@GetMapping("/detail/page1")
		public String detailPage1() {

			return "preview/detailPage1";
		}
		
		@GetMapping("/detail/page1")
		public String detailPage1() {

			return "preview/detailPage1";
		}
		
		@GetMapping("/detail/page2")
		public String detailPage2() {

			return "preview/detailPage2";
		}
		
		@GetMapping("/detail/page3")
		public String detailPage3() {

			return "preview/detailPage3";
		}
		
		@GetMapping("/detail/page4")
		public String detailPage4() {

			return "preview/detailPage4";
		}
		
		@GetMapping("/detail/page5")
		public String detailPage5() {

			return "preview/detailPage5";
		}
		
		@GetMapping("/detail/page6")
		public String detailPage6() {

			return "preview/detailPage6";
		}
		
		@GetMapping("/detail/page7")
		public String detailPage7() {

			return "preview/detailPage7";
		}
		
		@GetMapping("/detail/page8")
		public String detailPage8() {

			return "preview/detailPage8";
		}
		
		
		


}
