package kr.co.goodee39.cart.vo;
//담당: 김용현
public class CartVO {
	
	private int cartNum;
	private int cartAmount;
	private int cartMoney;
	private String cartIsdelete;
	private int userNum;
	private int gdsNum;
	private int gdsPrice;
	private String gdsName;
	private String gdsImage1;
	
	
	
	public String getGdsImage1() {
		return gdsImage1;
	}
	public void setGdsImage1(String gdsImage1) {
		this.gdsImage1 = gdsImage1;
	}
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

	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
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
