package kr.co.goodee39.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.goodee39.movie.service.movieService;

@Controller
public class HomeController {
	
	@Autowired
	movieService mService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(Model model) {
		mService.getMovieList(model);
		
		return "index";
	}
	
	
}
