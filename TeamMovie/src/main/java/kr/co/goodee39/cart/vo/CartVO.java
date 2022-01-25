package kr.co.goodee39.cart.vo;

public class CartVO {
	
	private int cartNum;
	private int cartAmount;
	private int cartMoney;
	private String cartIsdelete;
	private int userNum;
	private int gdsNum;
	private int gdsPrice;
	private String gdsNams;
	
	
	public int getCartMoney() {
		return cartMoney;
	}
	public void setCartMoney(int cartMoney) {
		this.cartMoney = cartMoney;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public int getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public String getGdsNams() {
		return gdsNams;
	}
	public void setGdsNams(String gdsNams) {
		this.gdsNams = gdsNams;
	}
	public int getCartNum() {
		return cartNum;
	}
	public int getCartAmount() {
		return cartAmount;
	}

	public String getCartIsdelete() {
		return cartIsdelete;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}

	public void setCartIsdelete(String cartIsdelete) {
		this.cartIsdelete = cartIsdelete;
	}
}
