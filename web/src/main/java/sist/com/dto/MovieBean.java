package sist.com.dto;

public class MovieBean {	
	private int movie_no;
	private String movie_title;
	private String opendate;
	private int runningtime;
	private String trailer;
	private String story;
	private String director;
	private String actor;
	private String poster_img;
	private String still_img;
	private int review_no;
	private String genre;
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getMovie_no() {
		return movie_no;
	}
	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}
	public String getMovie_title() {
		return movie_title;
	}
	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}
	public String getOpendate() {
		return opendate;
	}
	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}
	public int getRunningtime() {
		return runningtime;
	}
	public void setRunningtime(int runningtime) {
		this.runningtime = runningtime;
	}
	public String getTrailer() {
		return trailer;
	}
	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getPoster_img() {
		return poster_img;
	}
	public void setPoster_img(String poster_img) {
		this.poster_img = poster_img;
	}
	public String getStill_img() {
		return still_img;
	}
	public void setStill_img(String still_img) {
		this.still_img = still_img;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	@Override
	public String toString() {
		return "MovieBean [movie_no=" + movie_no + ", movie_title=" + movie_title + ", opendate=" + opendate
				+ ", runningtime=" + runningtime + ", trailer=" + trailer + ", story=" + story + ", director="
				+ director + ", actor=" + actor + ", poster_img=" + poster_img + ", still_img=" + still_img
				+ ", review_no=" + review_no + ", genre=" + genre + "]";
	}

	
	
	

	
	
}
