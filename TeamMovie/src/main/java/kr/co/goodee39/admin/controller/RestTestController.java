package kr.co.goodee39.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodee39.admin.service.AdminService;
import kr.co.goodee39.user.vo.UserVO;

@RestController
@RequestMapping("/admin")
public class RestTestController {
	
	@Autowired
	AdminService service;
	
	@DeleteMapping("/delete")
	public ResponseEntity<String>deleteUser(@RequestBody UserVO vo){
		
		System.out.println(vo.getUserNum());
		
		service.deleteUser(vo);

		System.out.println("받았니?");
		String str="삭제되었습니다.";
		
		ResponseEntity<String> entity = new ResponseEntity<String>(str,HttpStatus.OK);
		
		return entity;

}
	
}
