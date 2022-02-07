package kr.co.goodee39.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.goodee39.goods.service.goodsService;
import kr.co.goodee39.goods.vo.GoodsVO;
import kr.co.goodee39.movie.service.movieService;

@Controller
public class HomeController {
	
	@Autowired
	movieService mService;
	
	@Autowired
	goodsService goodsService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("home 컨트롤러 메소드 실행--------------------------------------------------");
		mService.getMovieList(model);
		mService.getBestMvList(model);
		
		List<GoodsVO> top4GoodsList = goodsService.showTop4GoodsList();
		model.addAttribute("top4GoodsList", top4GoodsList);
		System.out.println("home 컨트롤러 메소드 종료--------------------------------------------------");
		
		return "index";
	}
	
	
}
