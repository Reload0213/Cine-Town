package kr.co.goodee39.goods.vo;

public class GoodsVO {
	
	private int gdsNum;
	private String gdsName;
	private int gdsPrice;
	private String gdsDetail;
	private int gdsStock;
	private String gdsRegdate;
	private int gdsViewcnt;
	private int gdsUUID;
	private String gdsIsdelete;
	private String gdsBrand;
	private String gdsImage1;
	private String gdsImage2;
	private int grScore;  //제품별 리뷰 점수에 따른 평점을 받아주는 컬럼 (= goodsReview의 grCount와 동일)
	private String gdsDetail2;
	private String gdsDetail3;
	private String gdsDetail4;
	private String gdsDetail5;
	private String gdsDetail6;
	private String gdsDetail7;
	private String mvTitle; //영화별 관련 굿즈를 뿌려주기 위한 컬럼
	
	

	public String getMvTitle() {
		return mvTitle;
	}
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	public String getGdsDetail2() {
		return gdsDetail2;
	}
	public void setGdsDetail2(String gdsDetail2) {
		this.gdsDetail2 = gdsDetail2;
	}
	public String getGdsDetail3() {
		return gdsDetail3;
	}
	public void setGdsDetail3(String gdsDetail3) {
		this.gdsDetail3 = gdsDetail3;
	}
	public String getGdsDetail4() {
		return gdsDetail4;
	}
	public void setGdsDetail4(String gdsDetail4) {
		this.gdsDetail4 = gdsDetail4;
	}
	public String getGdsDetail5() {
		return gdsDetail5;
	}
	public void setGdsDetail5(String gdsDetail5) {
		this.gdsDetail5 = gdsDetail5;
	}
	public String getGdsDetail6() {
		return gdsDetail6;
	}
	public void setGdsDetail6(String gdsDetail6) {
		this.gdsDetail6 = gdsDetail6;
	}
	public String getGdsDetail7() {
		return gdsDetail7;
	}
	public void setGdsDetail7(String gdsDetail7) {
		this.gdsDetail7 = gdsDetail7;
	}
	public int getGrScore() {
		return grScore;
	}
	public void setGrScore(int grScore) {
		this.grScore = grScore;
	}
	public int getGdsUUID() {
		return gdsUUID;
	}
	public void setGdsUUID(int gdsUUID) {
		this.gdsUUID = gdsUUID;
	}
	public String getGdsImage1() {
		return gdsImage1;
	}
	public void setGdsImage1(String gdsImage1) {
		this.gdsImage1 = gdsImage1;
	}
	public String getGdsImage2() {
		return gdsImage2;
	}
	public void setGdsImage2(String gdsImage2) {
		this.gdsImage2 = gdsImage2;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public String getGdsName() {
		return gdsName;
	}
	public int getGdsPrice() {
		return gdsPrice;
	}
	public String getGdsDetail() {
		return gdsDetail;
	}
	public int getGdsStock() {
		return gdsStock;
	}
	public String getGdsRegdate() {
		return gdsRegdate;
	}
	public int getGdsViewcnt() {
		return gdsViewcnt;
	}
	
	public String getGdsIsdelete() {
		return gdsIsdelete;
	}
	public String getGdsBrand() {
		return gdsBrand;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public void setGdsDetail(String gdsDetail) {
		this.gdsDetail = gdsDetail;
	}
	public void setGdsStock(int gdsStock) {
		this.gdsStock = gdsStock;
	}
	public void setGdsRegdate(String gdsRegdate) {
		this.gdsRegdate = gdsRegdate;
	}
	public void setGdsViewcnt(int gdsViewcnt) {
		this.gdsViewcnt = gdsViewcnt;
	}
	
	public void setGdsIsdelete(String gdsIsdelete) {
		this.gdsIsdelete = gdsIsdelete;
	}
	public void setGdsBrand(String gdsBrand) {
		this.gdsBrand = gdsBrand;
	}
}
