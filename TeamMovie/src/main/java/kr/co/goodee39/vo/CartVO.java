package kr.co.goodee39.vo;

public class CartVO {
	
	private int cartNum;
	private int cartAmount;
	private int cartTotal;
	private String cartIsdelete;
	
	public int getCartNum() {
		return cartNum;
	}
	public int getCartAmount() {
		return cartAmount;
	}
	public int getCartTotal() {
		return cartTotal;
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
	public void setCartTotal(int cartTotal) {
		this.cartTotal = cartTotal;
	}
	public void setCartIsdelete(String cartIsdelete) {
		this.cartIsdelete = cartIsdelete;
	}
}
