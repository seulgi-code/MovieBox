package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sist.com.dto.BookingMovieBean;
import sist.com.dto.MemberBean;
import sist.com.dto.MovieBean;
import sist.com.dto.MovieScheduleBean;
@Component
public class MovieDao extends SqlSessionDaoSupport{
	@Autowired
	protected void initDao(SqlSessionTemplate st) throws Exception {
		// TODO Auto-generated method stub
		this.setSqlSessionTemplate(st);
	}

	public MemberBean membeInfo(String id) {
		return this.getSqlSession().selectOne("membeInfo", id);
	}
	
	public List<MovieScheduleBean> ajaxMovieSchedule(String no){
		return this.getSqlSession().selectList("ajaxMovieSchedule",Integer.parseInt(no));
	}

	public List<MovieBean> movieList(){
		return this.getSqlSession().selectList("movieList");
	} 
	
	public List<BookingMovieBean> mySeatInfo(String id) {
		return this.getSqlSession().selectList("mySeatInfo", id);
	}
	public void BookingDelete(HashMap<String,Object>map) {
		this.getSqlSession().delete("BookingDelete", map);
	}
	public String selectMovieImg(int movie_no) {
	   return this.getSqlSession().selectOne("selectMovieImg", movie_no);
	 }
}
