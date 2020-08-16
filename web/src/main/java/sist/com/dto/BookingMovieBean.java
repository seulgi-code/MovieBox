package sist.com.dto;

public class BookingMovieBean {
	private int booking_no;			//���Ź�ȣ
	private String booking_date;	//��������
	private int booking_amount;  //���ż���
	private int booking_charge;	//���űݾ�
	private String movie_name;	//���ſ�ȭ�̸�
	private String movie_loc;	//���ű���
	private String movie_regdate;	//���ų�¥
	private String movie_screen;	//���Ż󿵰�
	private String movie_time;		//���Žð�
	private String id;				//���ž��̵�
	private String seat;//�����¼�
	
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public int getBooking_no() {
		return booking_no;
	}
	public void setBooking_no(int booking_no) {
		this.booking_no = booking_no;
	}
	public String getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(String booking_date) {
		this.booking_date = booking_date;
	}
	public int getBooking_amount() {
		return booking_amount;
	}
	public void setBooking_amount(int booking_amount) {
		this.booking_amount = booking_amount;
	}
	public int getBooking_charge() {
		return booking_charge;
	}
	public void setBooking_charge(int booking_charge) {
		this.booking_charge = booking_charge;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getMovie_loc() {
		return movie_loc;
	}
	public void setMovie_loc(String movie_loc) {
		this.movie_loc = movie_loc;
	}
	public String getMovie_regdate() {
		return movie_regdate;
	}
	public void setMovie_regdate(String movie_regdate) {
		this.movie_regdate = movie_regdate;
	}
	public String getMovie_screen() {
		return movie_screen;
	}
	public void setMovie_screen(String movie_screen) {
		this.movie_screen = movie_screen;
	}
	public String getMovie_time() {
		return movie_time;
	}
	public void setMovie_time(String movie_time) {
		this.movie_time = movie_time;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "BookingMovieBean [booking_no=" + booking_no + ", booking_date=" + booking_date + ", booking_amount="
				+ booking_amount + ", booking_charge=" + booking_charge + ", movie_name=" + movie_name + ", movie_loc="
				+ movie_loc + ", movie_regdate=" + movie_regdate + ", movie_screen=" + movie_screen + ", movie_time="
				+ movie_time + ", id=" + id + ", seat=" + seat + "]";
	}

	
	
	

}
