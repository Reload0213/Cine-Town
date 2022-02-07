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
	 * 질문게시판 리스트 불러오는 서비스
	 * @param vo
	 * @return
	 */
	public List<QnaVO> qnaList(QnaVO vo) {

		return sqlSessionTemplate.selectList("qna.qnaList", vo);
	}

	/**
	 * 질문게시판 상세 페이지 불러오는 서비스
	 * @param qnaNum
	 * @return
	 */
	public QnaVO getQnaContents(int qnaNum) {

		QnaVO vo = sqlSessionTemplate.selectOne("qna.getQnaContents", qnaNum);

		return vo;
	}
	
	/**
	 * 질문게시판 작성하는 서비스
	 * @param qnaVO
	 */
	public void qnaWrite(QnaVO qnaVO) {
		
		sqlSessionTemplate.insert("qna.qnaWrite", qnaVO);
	}
	
	/**
	 * 질문게시판 수정하는 서비스
	 * @param qnaVO
	 */
	public void updateQna(QnaVO qnaVO) {
		
		sqlSessionTemplate.update("qna.updateQna", qnaVO);
	}
	
	/**
	 * 질문게시판 삭제하는 서비스
	 * @param qnaNum
	 */
	public void deleteQna(int qnaNum) {
		
		sqlSessionTemplate.delete("qna.deleteQna", qnaNum);
	}
	
}
