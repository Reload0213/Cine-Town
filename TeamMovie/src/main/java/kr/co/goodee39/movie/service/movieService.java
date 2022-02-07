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
		System.out.println(vo.getMvNum());
		System.out.println(vo.getMvGenre());
		List<MovieVO> mvGvo = sqlSessionTemplate.selectList("movie.getGenreMovie", vo);
		model.addAttribute("genreList", mvGvo);
		
//		model.addAttribute("genreList", sqlSessionTemplate.selectList("movie.getGenreMovie", vo));
//		MovieVO gmvo = new MovieVO();
//		vo.setMvNum(gmvo.getMvNum());
//		vo.setMvTitle(gmvo.getMvTitle());
//		vo.setMvActor(gmvo.getMvActor());
//		vo.setMvContent1(gmvo.getMvContent1());
//		vo.setMvContent2(gmvo.getMvContent2());
//		vo.setMvContent3(gmvo.getMvContent3());
//		vo.setMvContent4(gmvo.getMvContent4());
//		vo.setMvGenre(gmvo.getMvGenre());
//		vo.setMvYear(gmvo.getMvYear());
//		vo.setMvAge(gmvo.getMvAge());
//		vo.setMvRuntime(gmvo.getMvRuntime());
//		vo.setMvProducer(gmvo.getMvProducer());
//		vo.setMvAvgRate(gmvo.getMvAvgRate());
//		vo.setMvPosterPath(gmvo.getMvPosterPath());
//		vo.setMvBgPath(gmvo.getMvBgPath());
//		vo.setMvTrailer(gmvo.getMvTrailer());
//		vo.setMvRpCount(gmvo.getMvRpCount());	
	}
	
//	public List<MovieVO> getGenreMvList(Model model, MovieVO vo) {
//	
//		
//		return sqlSessionTemplate.selectList("movie.getGenreMovie");
//	}
	
}
