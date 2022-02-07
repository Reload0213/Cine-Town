package kr.co.goodee39.movie.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.movie.vo.MovieVO;

@Service
public class movieService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void getMovieList(Model model) {
		model.addAttribute("list", sqlSessionTemplate.selectList("movie.getMovieList"));
	}
	public void getBestMvList(Model model) {
		model.addAttribute("bestList", sqlSessionTemplate.selectList("movie.getBestMvList"));
	}
	
	
	public void getMovieDetail(Model model, MovieVO vo) {
		MovieVO mvDvo = sqlSessionTemplate.selectOne("movie.getMovieDetail", vo);
		model.addAttribute("mvDetail", mvDvo);
	}
	
	public void getGenreMvList(Model model, MovieVO vo) {
		System.out.println("서비스단 mvnum확인"+vo.getMvNum());
		System.out.println("서비스단 MvGenre확인"+vo.getMvGenre());
		List<MovieVO> mvGvo = sqlSessionTemplate.selectList("movie.getGenreMovie", vo);
		model.addAttribute("genreList", mvGvo);
	}
	
}
