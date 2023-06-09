package bbs;

//Java Beans : 하나의 게시글 정보를 담을 수 있는 인스턴스를 만들기 위한 틀
//게시판 데이터베이스 구축
public class Bbs {
	
	private Integer bbsID;
	private String bbsTitle;
	private String userID;
	private String bbsDate;
	private String bbsContent;
	private Integer bbsAvailable;
	private Integer bbsViewCnt;
	
	public Integer getBbsID() {
		return bbsID;
	}
	public void setBbsID(Integer bbsID) {
		this.bbsID = bbsID;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public Integer getBbsAvailable() {
		return bbsAvailable;
	}
	public void setBbsAvailable(Integer bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}
	public Integer getBbsViewCnt() {
		return bbsViewCnt;
	}
	public void setBbsViewCnt(Integer bbsViewCnt) {
		this.bbsViewCnt = bbsViewCnt;
	}

}
