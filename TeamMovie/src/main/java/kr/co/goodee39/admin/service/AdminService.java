package kr.co.goodee39.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.co.goodee39.adminmailbox.vo.AdminMailBoxVO;
import kr.co.goodee39.user.vo.UserVO;

@Service
public class AdminService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	

	public void  showUserInfo(Model model,int num,String userName){
		
	UserVO vo = new UserVO();
	vo.setStart((num-1)*vo.getCount()); //인덱스시작
	
	if(!userName.equals("")) {
	      
		model.addAttribute("userName",userName);
		
	   vo.setUserName(userName);
	   
	}
   model.addAttribute("list",sqlSessionTemplate.selectList("admin.showUserInfoList",vo));
	
   model.addAttribute("count",sqlSessionTemplate.selectOne("admin.selectUserCount",vo));
   
   
   model.addAttribute("num",num);
		
	}
	
 public void selectUserOne(@ModelAttribute("userVO") UserVO vo) {
		UserVO vo1 = new UserVO();
	
		vo1=sqlSessionTemplate.selectOne("admin.showUserInfoOne", vo);
		vo.setUserId(vo1.getUserId());
		vo.setUserName(vo1.getUserName());
		vo.setUserNum(vo1.getUserNum());
		vo.setUserRegdate(vo1.getUserRegdate());
		vo.setUserPw(vo1.getUserPw());
		vo.setUserEmail(vo1.getUserEmail());
		vo.setUserPhone(vo1.getUserPhone());
		vo.setUserAddr1(vo1.getUserAddr1());
		vo.setUserAddr2(vo1.getUserAddr2());
		vo.setUserAddr3(vo1.getUserAddr3());
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

public void showAdminMailBoxOne(@ModelAttribute("ambVO") AdminMailBoxVO vo) {
	AdminMailBoxVO vo1 = new AdminMailBoxVO();
	
	vo1=sqlSessionTemplate.selectOne("admin.selectOneAdminMail",vo);
	System.out.println(vo1.getMailNum());
	vo.setMailNum(vo1.getMailNum());
	vo.setUserId(vo1.getUserId());
	vo.setContent(vo1.getContent());
	vo.setSendDate(vo1.getSendDate());
	

	
	
}
	

	
	
	

}
