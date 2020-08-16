package sist.com.dto;

public class boardBean {

	private int bno;
	private String title;
	private String writer;
	private String contents;
	private int hit;	
	private String regdate;
	
	public boardBean() {
		super();
	}

	public boardBean(int bno, String title, String writer, String contents, int hit, String regdate) {
		super();
		this.bno = bno;
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.hit = hit;
		this.regdate = regdate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "boardBean [bno=" + bno + ", title=" + title + ", writer=" + writer + ", contents=" + contents + ", hit="
				+ hit + ", regdate=" + regdate + "]";
	}
	
	
	
	
	
}
