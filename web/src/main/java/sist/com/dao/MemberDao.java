package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sist.com.dto.MovieScheduleBean;
import sist.com.dto.MyReviewBean;
import sist.com.dto.ReviewBean;
import sist.com.dto.boardBean;
import sist.com.dto.BookingMovieBean;
import sist.com.dto.MemberBean;
import sist.com.dto.MovieBean;

@Component
public class MemberDao extends SqlSessionDaoSupport {

	@Autowired
	protected void initDao(SqlSessionTemplate st) throws Exception {
		// TODO Auto-generated method stub
		this.setSqlSessionTemplate(st);
	}

	public String loginIdCheck(String id) {
		return this.getSqlSession().selectOne("loginIdCheck", id);
	}

	public void insertMember(MemberBean bean) {
		this.getSqlSession().insert("insertMember", bean);
	}

	public String IdCheck(String id) {
		return this.getSqlSession().selectOne("IdCheck", id);
	}

	public MovieBean movieInfo(int no) {
		return this.getSqlSession().selectOne("moviInfo", no);
	}

	public List<MovieScheduleBean> movieSchedule(int no) {
		return this.getSqlSession().selectList("movieSchedule", no);
	}

	public List<MovieBean> movieList() {
		return this.getSqlSession().selectList("movieList");
	}

	public boolean checkMovieSc(HashMap<String, Object> map) {
		List<Object> ck = null;
		ck = this.getSqlSession().selectList("checkMovieSc", map);
		return ck == null || ck.equals("") ? false : true;
	}

	public List<String> selectMoveSc(HashMap<String, Object> map) {
		return this.getSqlSession().selectList("checkMovieSc", map);
	}

	
	public List<MyReviewBean> myReviewList(String id){
		return this.getSqlSession().selectList("myReviewList", id);
	}

	public void BookingMovieInsert(BookingMovieBean bean) {
		this.getSqlSession().insert("bookingMovieInsert", bean);
	}
	

	
	
///////지혜/////////////////////////////////////

	public void insertReview(ReviewBean bean) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("insertReview", bean);
	}

	public List<ReviewBean> selectReview(int no) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("selectReview", no);
	}

	public void uploadMovie(MovieBean bean) {
		this.getSqlSession().insert("uploadMovie", bean);
	}

	public List<MovieBean> selectMovie(int no) {
		return this.getSqlSession().selectList("movieList");
	}

/////////////////승원/////////////////////////////////////////////////////////
// 게시물 작성
	public void write(boardBean bean) {
		this.getSqlSession().insert("boardInsert", bean);
	}

	// 게시물 목록 확인
	public List<boardBean> listView(HashMap<String, Object> map) {
return this.getSqlSession().selectList("selectboard", map);
	}
	// 게시글의 정보
	public boardBean info(int bno) {
return this.getSqlSession().selectOne("boardInfo", bno);
	}
	// 조회수
	public void boardHit(int bno) {
		this.getSqlSession().update("hit", bno);
		}



// 수정
	public void update(boardBean bean) {

		this.getSqlSession().update("update", bean);
	}

// 삭제
	public void delete(int bno) {

		this.getSqlSession().delete("delete", bno);
	}

// 전체 게시물의 수
	public Integer getTotalRow() {

		return this.getSqlSession().selectOne("getTotalRow");
	}

}
