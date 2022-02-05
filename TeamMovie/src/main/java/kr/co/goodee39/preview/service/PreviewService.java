package kr.co.goodee39.preview.service;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.preview.vo.previewVO;
import kr.co.goodee39.user.vo.UserVO;

@Service
public class PreviewService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public void selectOneUser(int num,UserVO vo,HttpSession session,Model model) {
		
		UserVO vo1 = new UserVO();
		
		
		vo1=(UserVO)session.getAttribute("account");
		if(vo1 != null) {
		vo.setUserName(vo1.getUserName());     
		vo.setUserEmail(vo1.getUserEmail());
		//휴대폰 번호 010같은 앞자리 이후 
		vo.setUserPhone(vo1.getUserPhone().substring(3));
		
	  model.addAttribute("pwNum",num);
	  
		
		}
		
		
	}
	
	public void insertPw(UserVO vo,previewVO pwvo,HttpSession session) {
		
		UserVO vo1 = new UserVO();
		
		
		vo1=(UserVO)session.getAttribute("account");
		    
		   pwvo.setUserNum(vo1.getUserNum());
		   
		   
		  sqlSessionTemplate.insert("preview.insertPw",pwvo);
		
      
		
		
		
	
		
	}
	
	
}
