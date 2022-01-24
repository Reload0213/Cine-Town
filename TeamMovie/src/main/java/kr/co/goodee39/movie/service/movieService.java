package kr.co.goodee39.movie.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class movieService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void getMovieList(Model model) {
		model.addAttribute("list", sqlSessionTemplate.selectList("movie.getMovieList"));
	}
	
}
