package kr.co.goodee39.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.adminmailbox.vo.AdminMailBoxVO;
import kr.co.goodee39.user.vo.UserVO;

@Service
public class AdminService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	

	public void  showUserInfo(Model model,int num){
		
	UserVO vo = new UserVO();
	vo.setStart((num-1)*vo.getCount()); //인덱스시작
   model.addAttribute("list",sqlSessionTemplate.selectList("admin.showUserInfoList",vo));
	
   model.addAttribute("count",sqlSessionTemplate.selectOne("admin.selectUserCount",vo));
   
   
   model.addAttribute("num",num);
		
	}
	
public List<UserVO> setUserList(UserVO vo){
	
	return sqlSessionTemplate.selectList("admin.showUserInfoList",vo);
	
}

//지우지않고 업데이트로 isdelete를 바꿈
public void updateDeleteUser(UserVO vo) {
	
	sqlSessionTemplate.update("admin.updateDeleteUser",vo);
	
}

public void showAdminMailBoxList(Model model,int num) {
	
	AdminMailBoxVO vo = new AdminMailBoxVO();
	vo.setStart((num-1)*vo.getCount());
	
	model.addAttribute("list",sqlSessionTemplate.selectList("admin.selectAdminMail",vo));
	model.addAttribute("count",sqlSessionTemplate.selectOne("admin.selectAdminMailCount",vo));
	
	model.addAttribute("num",num);
	
}

public void updateDeleteAdminMailBox(AdminMailBoxVO vo) {
	
	sqlSessionTemplate.update("admin.updateDeleteAdminMail",vo);
}
	
	

	
	
	

}
