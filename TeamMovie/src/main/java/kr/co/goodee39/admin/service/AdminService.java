package kr.co.goodee39.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.user.vo.UserVO;

@Service
public class AdminService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	

	public void  showUserInfo(Model model){
		
	
model.addAttribute("list",sqlSessionTemplate.selectList("admin.showUserInfoList"));
	
		
		
	}
	
	
	
	
	
	

}
