package kr.co.goodee39.goodsReview.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.goodsReview.vo.goodsReviewVO;

@Service
public class goodsReviewService {
@Autowired
SqlSessionTemplate sqlSessionTemplate;

public void insertGoodsReview(goodsReviewVO vo) {
	System.out.println("insertGoodsReview 서비스 메소드 실행");
	System.out.println("------------------------------데이터 입력 확인------------------------------");
	System.out.println("grNum:"+vo.getGrNum());
	System.out.println("gdsNum:"+vo.getGdsNum());
	System.out.println("userNum:"+vo.getUserNum());
	System.out.println("userName:"+vo.getUserName());
	System.out.println("grComment:"+vo.getGrComment());
	System.out.println("grTitle:"+vo.getGrTitle());
	System.out.println("grScore:"+vo.getGrScore());
	System.out.println("------------------------------데이터 입력 확인 종료------------------------------");
	sqlSessionTemplate.insert("goodsReview.insertGoodsReview", vo);
}
}
