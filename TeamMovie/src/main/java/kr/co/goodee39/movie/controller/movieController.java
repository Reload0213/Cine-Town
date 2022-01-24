package kr.co.goodee39.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.movie.service.movieService;

@Controller
@RequestMapping("/movie")
public class movieController {
	
		@Autowired
		movieService mService;
	
		@GetMapping("/movieMenu")
		public String goMovieMenu(Model model) {
			
			mService.getMovieList(model);
			
			return "movie/movieMenu";
		}
		
		@GetMapping("/movieDetail")
		public String goMovieDetail() {
			
			
			return "movie/movieDetail";
		}
}
