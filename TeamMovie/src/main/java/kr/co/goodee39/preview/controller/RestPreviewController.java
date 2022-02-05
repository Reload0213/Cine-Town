package kr.co.goodee39.preview.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodee39.preview.service.PreviewService;
import kr.co.goodee39.preview.vo.previewVO;

@RestController
@RequestMapping("/preview")
public class RestPreviewController {

	@Autowired
	PreviewService previewService;
	
	@PostMapping("/checkRedundant")
	public ResponseEntity<Integer> previewCheckRedundant(@RequestBody previewVO pwvo,HttpSession session) {
		
		ResponseEntity<Integer> entity = new ResponseEntity<Integer>(previewService.checkMulReceipt(pwvo, session),HttpStatus.OK);
		
	   System.out.println("갔니?");
		return entity;
		
		
		
	}
	
	
}


