package kr.co.goodee39.admin.service;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.admin.vo.NoticeVO;

@Service
public class noticeService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<NoticeVO> noticeList(){
		System.out.println("noticeList메소드 실행");
		
		return sqlSessionTemplate.selectList("notice.noticeList");
	}
}
