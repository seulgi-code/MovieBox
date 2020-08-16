package sist.com.orm;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import sist.com.dao.MovieDao;
import sist.com.dto.BookingMovieBean;
import sist.com.dto.MemberBean;
import sist.com.dto.MovieBean;
import sist.com.dto.MovieScheduleBean;

@RestController(value="movie")
public class MovieController {

	@Autowired
	MovieDao dao;
	
	@RequestMapping(value="memberInfo.do")
	public MemberBean memberInfo(@RequestParam(value="id",required=false)String id) {	
		return dao.membeInfo(id);
	}
	
	@RequestMapping(value="movieSchedule.do")
	public List<MovieScheduleBean> ajaxMovieSchedule(String no){
		return dao.ajaxMovieSchedule(no);
	}
	@RequestMapping(value="mainMovieList.do")
	public List<MovieBean> mainMovieList() {
		System.out.println("mainList");
		return dao.movieList();
	}
	
	@RequestMapping(value="mySeatList.do")
	public List<BookingMovieBean>mySeatList(HttpSession session,@RequestParam(value="booking_no",required=false,defaultValue="-1")int booking_no){
		//String no=(String)session.getAttribute("booking_no");
		//System.out.println(no);
		/*if(no!=null && no.length()>0) {
			dao.BookingDelete(Integer.parseInt(no));
			return dao.mySeatInfo(id);
		}*/
		String id=(String)session.getAttribute("id");
		return dao.mySeatInfo(id);
	}
	/*@RequestMapping(value="SeatDelete.do")
	public List<BookingMovieBean> seatDelete(@RequestParam(value="booking_no",required=false)int booking_no,HttpSession session) {
		HashMap<String,Object>map=new HashMap<String, Object>();
		String id=(String)session.getAttribute("id");
		if(booking_no>0) {
		map.put("id", id);
		map.put("booking_no",booking_no);
		
		dao.BookingDelete(map);
		}
		return dao.mySeatInfo(id);
	}*/
	@RequestMapping(value="selectImg.do")
	   public String selectMovieImg(@RequestParam(value="movie_no",required=false)int movie_no) {
	      System.out.println(movie_no);
	      return dao.selectMovieImg(movie_no);
	   }
	
	
}
