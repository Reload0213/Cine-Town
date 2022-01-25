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
		MovieVO vo2 = sqlSessionTemplate.selectOne("movie.getMovieDetail", vo);
		System.out.println("무비 서비스 작동");
		vo.setMvNum(vo2.getMvNum());
		System.out.println(vo2.getMvNum());
		vo.setMvTitle(vo2.getMvTitle());
		vo.setMvDirector(vo2.getMvDirector());
		vo.setMvDetail(vo2.getMvDetail());
		vo.setMvGenre(vo2.getMvGenre());
		vo.setMvYear(vo2.getMvYear());
		vo.setMvAge(vo2.getMvNum());
		vo.setMvRuntime(vo2.getMvNum());
		vo.setMvProducer(vo2.getMvProducer());
		vo.setMvAvgRate(vo2.getMvNum());
		vo.setMvImgPath(vo2.getMvImgPath());
		
	}
	
}
