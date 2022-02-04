package kr.co.goodee39.goodsReview.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.goodsReview.vo.goodsReviewVO;

@Service
public class goodsReviewService {
@Autowired
SqlSessionTemplate sqlSessionTemplate;
// 굿즈리뷰를 삽입시키는 서비스 메소드
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
// 굿즈 리뷰를 조회하는 서비스 메소드
public List<goodsReviewVO> selectGoodsReviewList(goodsReviewVO vo){
	System.out.println("selectGoodsReviewList 서비스 메소드 실행");
	System.out.println("------------------------------데이터 입력 확인------------------------------");
	System.out.println("grCount:"+vo.getGrCount());
	System.out.println("------------------------------데이터 입력 확인 종료------------------------------");
	return sqlSessionTemplate.selectList("goodsReview.selectGoodsReviewList", vo);
	
}

//굿즈 리뷰를 삭제하는 서비스 메소드
public void deleteGoodsReview(goodsReviewVO vo) {
	System.out.println("deleteGoodsReview 서비스 메소드 실행");
	System.out.println("------------------------------데이터 입력 확인------------------------------");
	System.out.println("grNum:"+vo.getGrNum());
	System.out.println("------------------------------데이터 입력 확인 종료------------------------------");
	sqlSessionTemplate.update("goodsReview.deleteGoodsReview", vo);
}

//굿즈 리뷰를 수정하는 서비스 메소드 
public void updateGoodsReview(goodsReviewVO vo) {
	System.out.println("updateGoodsReview 서비스 메소드 실행");
	System.out.println("------------------------------데이터 입력 확인------------------------------");
	System.out.println("grNum:"+vo.getGrNum());
	sqlSessionTemplate.update("goodsReview.updateGoodsReview", vo);
	System.out.println("------------------------------데이터 입력 확인 종료------------------------------");
}

//굿즈별 리뷰 별점 평점을 뿌려주기위한 서비스 메소드 
public int showGrCount(int gdsNum) {
	System.out.println("showGrCount 서비스 메소드 실행");
	System.out.println("------------------------------데이터 입력 확인------------------------------");
	goodsReviewVO rvo = new goodsReviewVO();
	int goodsNum;
	rvo = sqlSessionTemplate.selectOne("goodsReview.showGrCount", gdsNum);
	if(rvo == null) {
		goodsNum = 0;
	} else {
		goodsNum = rvo.getGrCount();
	}
	/* rvo.setGrCount(goodsNum); */
	System.out.println("goodsNum:"+goodsNum);
	
	
	System.out.println("goodsNum:"+goodsNum);
	System.out.println("------------------------------데이터 입력 확인 종료------------------------------");
	return goodsNum;
}

//굿즈 전체 리류 별점 평점을 뿌려주기 위한 서비스 메소드
public List<goodsReviewVO> showGrCountList(){
	System.out.println("showGrCountList 서비스 메소드 실행");
	return sqlSessionTemplate.selectList("goodsReview.showGrCountList");
}






}
