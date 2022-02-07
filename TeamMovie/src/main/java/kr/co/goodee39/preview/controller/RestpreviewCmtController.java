package kr.co.goodee39.preview.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodee39.preview.service.PreviewCmtService;
import kr.co.goodee39.preview.vo.PreviewCmtVO;
import kr.co.goodee39.user.vo.UserVO;

@RestController
@RequestMapping("/preview/detail/cmt")

public class RestpreviewCmtController {

	@Autowired
	PreviewCmtService previewCmtService;
	
	@GetMapping("/load/{num}")
	public ResponseEntity<List<PreviewCmtVO>> loadAllComment(@PathVariable int num, PreviewCmtVO cmtvo){
		
		cmtvo.setPwNum(num);
	
		
		ResponseEntity<List<PreviewCmtVO>> entity =
				new ResponseEntity<List<PreviewCmtVO>>(previewCmtService.selectPwCmt(cmtvo),HttpStatus.OK);


		
		
		return entity;
		
	}
	
	@DeleteMapping("/delete")
	public 	ResponseEntity<Map<String , String>> deleteComment(@RequestBody PreviewCmtVO cmtvo){
		
		Map<String,String> map = new HashMap<String ,String>();
		
		map.put("msg","삭제완료");
		
		
		previewCmtService.deletePwCmt(cmtvo);
		
		ResponseEntity<Map<String , String>> entity = new 	ResponseEntity<Map<String , String>>(map,HttpStatus.OK);
		return entity;
		
		
		
		
	}
	@PostMapping("/add")
	public ResponseEntity<PreviewCmtVO> addComment(@RequestBody PreviewCmtVO cmtvo,HttpSession session){
		UserVO vo1 = new UserVO();
		
		vo1 = (UserVO)session.getAttribute("account");
		
		cmtvo.setWriterName(vo1.getUserName());
		cmtvo.setWriterNum(vo1.getUserNum());
		
		previewCmtService.insertPwCmt(cmtvo);
		
		ResponseEntity<PreviewCmtVO> entity = new ResponseEntity<PreviewCmtVO>(cmtvo,HttpStatus.OK);
		
		return entity;
		
	}
	
	
}
