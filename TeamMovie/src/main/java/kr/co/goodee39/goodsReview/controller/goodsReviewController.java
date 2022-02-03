package kr.co.goodee39.goodsReview.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodee39.goodsReview.service.goodsReviewService;
import kr.co.goodee39.goodsReview.vo.goodsReviewVO;
import kr.co.goodee39.user.vo.UserVO;

@RestController
@RequestMapping("/goodsReview")
public class goodsReviewController {
	@Autowired
	goodsReviewService grService;

//	굿즈 리뷰 삽입 컨트롤러 메소드
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
	 
//	 굿즈 리뷰 조회 컨트롤러 메소드
	 @GetMapping("/{id}")
	 public ResponseEntity<List<goodsReviewVO>> selectgoodsReviewList(@PathVariable int id){
		 System.out.println("-------------------------------selectgoodsReviewList 컨트롤러 메소드 실행-------------------------------");
		 System.out.println(id);
		 System.out.println("-------------------------------selectgoodsReviewList 컨트롤러 메소드 종료-------------------------------");
		 goodsReviewVO vo = new goodsReviewVO();
		 vo.setGdsNum(id);
		 List<goodsReviewVO> list = grService.selectGoodsReviewList(vo);
		 ResponseEntity<List<goodsReviewVO>> entity = new ResponseEntity<List<goodsReviewVO>>(list, HttpStatus.OK);
		 return entity;
		 
		 
	 }
	 
//	 굿즈 리뷰 삭제 컨트롤러 메소드 
	 @DeleteMapping("/delete")
	 public ResponseEntity<String> deletegrReview(@RequestBody goodsReviewVO vo, HttpSession session){
		 System.out.println("-------------------------------deletegrReview 컨트롤러 메소드 실행-------------------------------");
		 UserVO uvo = (UserVO)session.getAttribute("account");
		 vo.setUserNum(uvo.getUserNum());
		 vo.setUserName(uvo.getUserName());
		 grService.deleteGoodsReview(vo);
		 String deleteContirm = vo.getUserName()+"님이 남긴 제목:"+vo.getGrTitle()+"("+vo.getGrNum()+"번 게시물)이 삭제되었습니다";
		 System.out.println(deleteContirm);
		 System.out.println("-------------------------------deletegrReview 컨트롤러 메소드 종료-------------------------------");
		 ResponseEntity<String> entity = new ResponseEntity<String>(deleteContirm, HttpStatus.OK);
		 return entity;
	 }
	 
//	 굿즈 리뷰 수정 컨트롤러 메소드 
	 @PatchMapping("/update")
	 public ResponseEntity<goodsReviewVO> updategrReview(@RequestBody goodsReviewVO vo, HttpSession session){
		 System.out.println("-------------------------------updategrReview 컨트롤러 메소드 실행-------------------------------");
		 UserVO uvo = (UserVO)session.getAttribute("account");
		 vo.setUserNum(uvo.getUserNum());
		 vo.setUserName(uvo.getUserName());
		 grService.updateGoodsReview(vo);
		 
		 String updateConfirm = vo.getUserName()+"님이 수정하신 내용은"+vo.getGrComment()+" 입니다";
		 System.out.println(updateConfirm);
		 System.out.println("-------------------------------updategrReview 컨트롤러 메소드 종료-------------------------------");
		 ResponseEntity<goodsReviewVO> entity = new ResponseEntity<goodsReviewVO>(vo, HttpStatus.OK);
		 return entity;
	 }
	 

}
