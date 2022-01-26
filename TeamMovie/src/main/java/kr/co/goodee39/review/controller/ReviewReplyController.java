package kr.co.goodee39.review.controller;

import java.util.List;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodee39.review.service.ReviewReplyService;
import kr.co.goodee39.review.vo.ReviewReplyVO;
import kr.co.goodee39.user.vo.UserVO;


@RestController
@RequestMapping("/ReviewReply")
public class ReviewReplyController {
	
	@Autowired
	ReviewReplyService reviewReplyService;
	
	@PostMapping("/set")
	public ResponseEntity<ReviewReplyVO> setComment(@RequestBody ReviewReplyVO vo, HttpSession session){
		
		System.out.println(vo.getRpComment());
		System.out.println(vo.getMvNum());
		UserVO mvo = (UserVO)session.getAttribute("account");
		vo.setRpWriternum(mvo.getUserNum());
		vo.setRpWritername(mvo.getUserName());
		
		reviewReplyService.insertComment(vo);
		
		ResponseEntity<ReviewReplyVO> entity = new ResponseEntity<ReviewReplyVO>(vo,HttpStatus.OK);
		
		return entity;
	}
	
	@GetMapping("/get/{num}")
	public ResponseEntity<List<ReviewReplyVO>> getCommentList(@PathVariable int num){
		ReviewReplyVO vo = new ReviewReplyVO();
		vo.setMvNum(num);
		
		List<ReviewReplyVO> list = reviewReplyService.selectCommentList(vo);
		
		ResponseEntity<List<ReviewReplyVO>> entity = new ResponseEntity<List<ReviewReplyVO>>(list, HttpStatus.OK);
		
		return entity;
		
	}
	
	@DeleteMapping("/delete")
	public ResponseEntity<String> dropComment(@RequestBody ReviewReplyVO vo, HttpSession session){
		
		System.out.println(vo.getRpNum());
		
		UserVO mvo = (UserVO)session.getAttribute("account");
		vo.setRpWriternum(mvo.getUserNum());
		
		reviewReplyService.deleteComment(vo);
		
		String str = "삭제되었습니다";
		
		ResponseEntity<String> entity = new ResponseEntity<String>(str , HttpStatus.OK);
		return entity;
	}
	
}





