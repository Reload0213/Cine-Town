package kr.co.goodee39.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.admin.vo.QnaVO;

@Service
public class QnaService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * QnA 리스트 불러오기
	 * @param vo
	 * @return
	 */
	public List<QnaVO> qnaList(QnaVO vo) {
		
		return sqlSessionTemplate.selectList("qna.selectQnaList", vo);
		
	}
}
