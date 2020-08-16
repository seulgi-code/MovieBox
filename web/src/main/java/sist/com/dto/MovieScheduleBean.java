package sist.com.dto;

public class MovieScheduleBean {
	private int movie_no;
	private String movie_title;
	private String schedule_date;
	private String schedule_time;
	private String runningtime;
	private int screen_no;
	private String screen_name;
	private int theater_no;
	private String theater_name;
	private String theater_loc;
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
	public String getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
	}
	public String getSchedule_time() {
		return schedule_time;
	}
	public void setSchedule_time(String schedule_time) {
		this.schedule_time = schedule_time;
	}
	public String getRunningtime() {
		return runningtime;
	}
	public void setRunningtime(String runningtime) {
		this.runningtime = runningtime;
	}
	public int getScreen_no() {
		return screen_no;
	}
	public void setScreen_no(int screen_no) {
		this.screen_no = screen_no;
	}
	public String getScreen_name() {
		return screen_name;
	}
	public void setScreen_name(String screen_name) {
		this.screen_name = screen_name;
	}
	public int getTheater_no() {
		return theater_no;
	}
	public void setTheater_no(int theater_no) {
		this.theater_no = theater_no;
	}
	public String getTheater_name() {
		return theater_name;
	}
	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}
	public String getTheater_loc() {
		return theater_loc;
	}
	public void setTheater_loc(String theater_loc) {
		this.theater_loc = theater_loc;
	}
	@Override
	public String toString() {
		return "MovieScheduleBean [movie_no=" + movie_no + ", movie_title=" + movie_title + ", schedule_date="
				+ schedule_date + ", schedule_time=" + schedule_time + ", runningtime=" + runningtime + ", screen_no="
				+ screen_no + ", screen_name=" + screen_name + ", theater_no=" + theater_no + ", theater_name="
				+ theater_name + ", theater_loc=" + theater_loc + "]";
	}
	

}
