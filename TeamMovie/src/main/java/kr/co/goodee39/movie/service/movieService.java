package kr.co.goodee39.movie.service;

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
	
	
	public void getMovieDetail(Model model, MovieVO vo) {
		MovieVO mvo = sqlSessionTemplate.selectOne("movie.getMovieDetail", vo);
		vo.setMvNum(mvo.getMvNum());
		vo.setMvTitle(mvo.getMvTitle());
		vo.setMvActor(mvo.getMvActor());
		vo.setMvContent1(mvo.getMvContent1());
		vo.setMvContent2(mvo.getMvContent2());
		vo.setMvContent3(mvo.getMvContent3());
		vo.setMvContent4(mvo.getMvContent4());
		vo.setMvGenre(mvo.getMvGenre());
		vo.setMvYear(mvo.getMvYear());
		vo.setMvAge(mvo.getMvAge());
		vo.setMvRuntime(mvo.getMvRuntime());
		vo.setMvProducer(mvo.getMvProducer());
		vo.setMvAvgRate(mvo.getMvAvgRate());
		vo.setMvPosterPath(mvo.getMvPosterPath());
		vo.setMvBgPath(mvo.getMvBgPath());
		vo.setMvTrailer(mvo.getMvTrailer());
		vo.setMvRpCount(mvo.getMvRpCount());
		
		
	}
	
}
