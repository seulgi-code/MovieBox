package sist.com.dto;

public class ReviewBean {
	private String renum;
	private String id;
	private String movie_no; 
	private String reviewpass; 
	private String regdate;
	private String con;
	private String rating;
	public String getRenum() {
		return renum;
	}
	public void setRenum(String renum) {
		this.renum = renum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMovie_no() {
		return movie_no;
	}
	public void setMovie_no(String movie_no) {
		this.movie_no = movie_no;
	}
	public String getReviewpass() {
		return reviewpass;
	}
	public void setReviewpass(String reviewpass) {
		this.reviewpass = reviewpass;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public ReviewBean(String renum, String id, String movie_no, String reviewpass, String regdate, String con,
			String rating) {
		super();
		this.renum = renum;
		this.id = id;
		this.movie_no = movie_no;
		this.reviewpass = reviewpass;
		this.regdate = regdate;
		this.con = con;
		this.rating = rating;
	}
	public ReviewBean() {
		super();
	}
	@Override
	public String toString() {
		return "ReviewBean [renum=" + renum + ", id=" + id + ", movie_no=" + movie_no + ", reviewpass=" + reviewpass
				+ ", regdate=" + regdate + ", con=" + con + ", rating=" + rating + "]";
	}

	
}
