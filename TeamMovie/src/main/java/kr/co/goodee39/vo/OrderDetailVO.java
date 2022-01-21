package kr.co.goodee39.vo;

public class OrderDetailVO {
	
	private int orderNum;
	private String orderDate;
	private String orderIsdelete;
	private int orderShipnum;
	
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderIsdelete() {
		return orderIsdelete;
	}
	public void setOrderIsdelete(String orderIsdelete) {
		this.orderIsdelete = orderIsdelete;
	}
	public int getOrderShipnum() {
		return orderShipnum;
	}
	public void setOrderShipnum(int orderShipnum) {
		this.orderShipnum = orderShipnum;
	}
}
