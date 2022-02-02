package kr.co.goodee39.review.service;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.goodee39.review.vo.ReviewReplyVO;

@Service
public class ReviewReplyService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertComment(ReviewReplyVO vo) {
		sqlSessionTemplate.insert("reviewReply.insertComment", vo);
		System.out.println(vo.getRpComment());
	}
	
	public List<ReviewReplyVO> selectCommentList(ReviewReplyVO vo){
		return sqlSessionTemplate.selectList("reviewReply.selectCommentList", vo);
	}
	
	public void deleteComment(ReviewReplyVO vo) {
		sqlSessionTemplate.delete("reviewReply.deleteComment", vo);
	}
	
	public void updateComment(ReviewReplyVO vo) {
		
		sqlSessionTemplate.update("reviewReply.updateComment", vo);

	}
}
