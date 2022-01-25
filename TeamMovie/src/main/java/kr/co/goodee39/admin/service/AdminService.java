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
	
	

	public void  showUserInfo(Model model,int num){
		
	UserVO vo = new UserVO();
	vo.setStart((num-1)*vo.getCount()); //인덱스시작
   model.addAttribute("list",sqlSessionTemplate.selectList("admin.showUserInfoList",vo));
		
   model.addAttribute("num",num);
		
	}
	public void deleteUser(UserVO vo) {
		
		sqlSessionTemplate.delete("admin.deleteUser",vo);
		
	}
	
	
	
	
	

}
