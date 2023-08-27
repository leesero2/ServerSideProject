package review;

import java.sql.Timestamp;

public class ReviewDataBean {
	public int reviewNumber;
	public int getReviewNumber() {
		return reviewNumber;
	}
	public void setReviewNumber(int reviewNumber) {
		this.reviewNumber = reviewNumber;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Timestamp getReviewTime() {
		return reviewTime;
	}
	public void setReviewTime(Timestamp reviewTime) {
		this.reviewTime = reviewTime;
	}
	public String getReviewMovieTitle() {
		return reviewMovieTitle;
	}
	public void setReviewMovieTitle(String reviewMovieTitle) {
		this.reviewMovieTitle = reviewMovieTitle;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	private String reviewContent;
	private Timestamp reviewTime;
	private String reviewMovieTitle;
	private String writer;
	private String passwd;
	private int readcount;
}
