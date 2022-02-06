package kr.co.goodee39.preview.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.preview.vo.PreviewCmtVO;


@Service
public class PreviewCmtService {
	
	
	
	@Autowired
   SqlSessionTemplate sqlSessionTemplate;
	
	
	//덧글 코멘트 불러오기
	public List<PreviewCmtVO> selectPwCmt(PreviewCmtVO cmtvo){
		
		List<PreviewCmtVO> list = new ArrayList<PreviewCmtVO>();
		
		list =sqlSessionTemplate.selectList("pwCmt.selectPwCmt",cmtvo);
		
		
		return list;
		
	}

	public void deletePwCmt(PreviewCmtVO cmtvo) {
		
		sqlSessionTemplate.delete("pwCmt.deletePwCmt",cmtvo);
		
	}
	public void insertPwCmt(PreviewCmtVO cmtvo) {
		sqlSessionTemplate.insert("pwCmt.insertPwCmt",cmtvo);
		
	}
	
}
