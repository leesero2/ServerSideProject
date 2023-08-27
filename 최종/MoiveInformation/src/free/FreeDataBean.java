package free;
import java.sql.Timestamp;

public class FreeDataBean {
	
	public int freeNumber;
	public int getFreeNumber() {
		return freeNumber;
	}
	public void setFreeNumber(int freeNumber) {
		this.freeNumber = freeNumber;
	}
	public String getFreeContent() {
		return freeContent;
	}
	public void setFreeContent(String freeContent) {
		this.freeContent = freeContent;
	}
	public Timestamp getFreeTime() {
		return freeTime;
	}
	public void setFreeTime(Timestamp freeTime) {
		this.freeTime = freeTime;
	}
	public String getFreeTitle() {
		return freeTitle;
	}
	public void setFreeTitle(String freeTitle) {
		this.freeTitle = freeTitle;
	}
	
	private String freeContent;
	private Timestamp freeTime;
	private String freeTitle;
	private String writer;
	private String passwd;
	private int readcount;
	
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
}
