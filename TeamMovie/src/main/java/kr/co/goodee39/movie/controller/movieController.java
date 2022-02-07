package kr.co.goodee39.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.goods.service.goodsService;
import kr.co.goodee39.goods.vo.GoodsVO;
import kr.co.goodee39.movie.service.movieService;
import kr.co.goodee39.movie.vo.MovieVO;

@Controller
@RequestMapping("/movie")
public class movieController {
	
		@Autowired
		movieService mService;
		
		@Autowired
		goodsService goodsService;
	
		@GetMapping("/movieMenu")
		public String goMovieMenu(Model model) {
			mService.getMovieList(model);
			
			return "movie/movieMenu";
		}
		
		@GetMapping("/movieDetail")
		public String goMovieDetail(MovieVO vo, Model model) {
			 mService.getMovieDetail(model, vo);
	         MovieVO mvo =  (MovieVO)model.getAttribute("mvDetail");
	         String mvTitle = mvo.getMvTitle();
	         System.out.println(mvTitle);
	         List<GoodsVO> relateGoodsList = goodsService.relateGoodsList(mvTitle); 
	         
	           
	         model.addAttribute("relateGoodsList", relateGoodsList );
	          
	         System.out.println("movieDetail 종료");

			
			
			mService.getGenreMvList(model, vo);
			
			
			return "movie/movieDetail";
		}
}
