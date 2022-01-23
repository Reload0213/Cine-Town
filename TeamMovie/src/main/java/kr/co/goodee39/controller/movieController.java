package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/movie")
public class movieController {
	
		@GetMapping("/movieMenu")
		public String goMovieMenu() {

			return "movie/movieMenu";
		}
		
		@GetMapping("/movieDetail")
		public String goMovieDetail() {

			return "movie/movieDetail";
		}
}
