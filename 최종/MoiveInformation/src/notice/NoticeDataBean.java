package notice;
import java.sql.Timestamp;
public class NoticeDataBean {
	
	
	public int getNoticeNumber() {
		return noticeNumber;
	}
	public void setNoticeNumber(int noticeNumber) {
		this.noticeNumber = noticeNumber;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Timestamp getNoticeTime() {
	return noticeTime;
	}
	public void setNoticeTime(Timestamp noticeTime) {
	this.noticeTime = noticeTime;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	private int noticeNumber;
	private String noticeContent;
	private Timestamp noticeTime;
	private String noticeTitle;
	

}
