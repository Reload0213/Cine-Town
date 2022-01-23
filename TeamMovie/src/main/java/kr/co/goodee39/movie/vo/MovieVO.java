package kr.co.goodee39.movie.vo;

public class MovieVO {
	
	// mvAvgRate int 맞는지 확인 필요함
	
	private int mvNum;
	private String mvTitle;
	private String mvDirector;
	private String mvDetail;
	private String mvGenre;
	private String mvYear;
	private int mvAge;
	private int mvRuntime;
	private String mvProducer;
	private int mvAvgRate;
	private String mvIsdelete;
	
	public int getMvNum() {
		return mvNum;
	}
	public String getMvTitle() {
		return mvTitle;
	}
	public String getMvDirector() {
		return mvDirector;
	}
	public String getMvDetail() {
		return mvDetail;
	}
	public String getMvGenre() {
		return mvGenre;
	}
	public String getMvYear() {
		return mvYear;
	}
	public int getMvAge() {
		return mvAge;
	}
	public int getMvRuntime() {
		return mvRuntime;
	}
	public String getMvProducer() {
		return mvProducer;
	}
	public int getMvAvgRate() {
		return mvAvgRate;
	}
	public String getMvIsdelete() {
		return mvIsdelete;
	}
	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	public void setMvDirector(String mvDirector) {
		this.mvDirector = mvDirector;
	}
	public void setMvDetail(String mvDetail) {
		this.mvDetail = mvDetail;
	}
	public void setMvGenre(String mvGenre) {
		this.mvGenre = mvGenre;
	}
	public void setMvYear(String mvYear) {
		this.mvYear = mvYear;
	}
	public void setMvAge(int mvAge) {
		this.mvAge = mvAge;
	}
	public void setMvRuntime(int mvRuntime) {
		this.mvRuntime = mvRuntime;
	}
	public void setMvProducer(String mvProducer) {
		this.mvProducer = mvProducer;
	}
	public void setMvAvgRate(int mvAvgRate) {
		this.mvAvgRate = mvAvgRate;
	}
	public void setMvIsdelete(String mvIsdelete) {
		this.mvIsdelete = mvIsdelete;
	}
}
