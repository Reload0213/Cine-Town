package kr.co.goodee39.user.vo;

public class UserVO {

	private int userNum;
	private String userId;
	private String userPw;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String userRegdate;
	private String userAddr1;
	private String userAddr2;
	private String userAddr3;
	private String userIsdelete;
	private int verify;
	
//	어드민 회원출력을 게시판 형식으로하기때문에 start,count 선언
	private int start;
	private int count;
  
	public UserVO() {
	 this.start=0;
	 this.count=10;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserRegdate() {
		return userRegdate;
	}

	public void setUserRegdate(String userRegdate) {
		this.userRegdate = userRegdate;
	}

	public String getUserAddr1() {
		return userAddr1;
	}

	public void setUserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}

	public String getUserAddr2() {
		return userAddr2;
	}

	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}

	public String getUserAddr3() {
		return userAddr3;
	}

	public void setUserAddr3(String userAddr3) {
		this.userAddr3 = userAddr3;
	}

	public String getUserIsdelete() {
		return userIsdelete;
	}

	public void setUserIsdelete(String userIsdelete) {
		this.userIsdelete = userIsdelete;
	}

	public int getVerify() {
		return verify;
	}

	public void setVerify(int verify) {
		this.verify = verify;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	//start, setcount만 따로 추가하였습니다.
	
}
