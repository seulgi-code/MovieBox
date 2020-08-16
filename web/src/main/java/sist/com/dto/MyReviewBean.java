package sist.com.dto;

public class MyReviewBean {
	private String movie_title;
	private String con;
	private String rating;
	private String regdate;
	public String getMovie_title() {
		return movie_title;
	}
	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "MyReviewBean [movie_title=" + movie_title + ", con=" + con + ", rating=" + rating + ", regdate="
				+ regdate + "]";
	}
	

}
