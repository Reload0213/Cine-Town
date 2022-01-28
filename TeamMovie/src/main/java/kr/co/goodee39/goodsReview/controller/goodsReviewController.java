package kr.co.goodee39.goodsReview.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodee39.goodsReview.service.goodsReviewService;
import kr.co.goodee39.goodsReview.vo.goodsReviewVO;
import kr.co.goodee39.user.vo.UserVO;

@RestController
@RequestMapping("/goodsReview")
public class goodsReviewController {
	@Autowired
	goodsReviewService grService;

	
	 @PostMapping("/insertgrReview") public ResponseEntity<goodsReviewVO>
	 insertgrReview(@RequestBody goodsReviewVO vo, HttpSession session){
		 UserVO uvo = (UserVO)session.getAttribute("account");
		 vo.setUserNum(uvo.getUserNum());
		 vo.setUserName(uvo.getUserName());
		 grService.insertGoodsReview(vo);
		 ResponseEntity<goodsReviewVO> entity = new ResponseEntity<goodsReviewVO>(vo, HttpStatus.OK);
		 
	 System.out.println("-------------------------------insertgrReview 컨트롤러 메소드 실행-------------------------------");
	 System.out.println("grComment 내용 확인:"+vo.getGrComment());
	 System.out.println("grTitle 내용 확인:"+vo.getGrTitle());
	 System.out.println("grScore 내용 확인:"+vo.getGrScore());
	 System.out.println("gdsNum 내용 확인:"+vo.getGdsNum());
	 System.out.println("userNum 내용 확인:"+vo.getUserNum());
	 System.out.println("userName 내용 확인:"+vo.getUserName());
	 System.out.println("-------------------------------insertgrReview 컨트롤러 메소드 종료-------------------------------");
	 return entity;
	 }
	 

}
