package kr.co.goodee39.productWishlist.vo;

public class productWishlistVO {
	private int pwishNum;
	private int gdsNum;
	private int userNum;
	private int gdsPrice;
	private String pwishYN;
	private String gdsName;
	public int getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public int getPwishNum() {
		return pwishNum;
	}
	public void setPwishNum(int pwishNum) {
		this.pwishNum = pwishNum;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public String getPwishYN() {
		return pwishYN;
	}
	public void setPwishYN(String pwishYN) {
		this.pwishYN = pwishYN;
	}
	

}
