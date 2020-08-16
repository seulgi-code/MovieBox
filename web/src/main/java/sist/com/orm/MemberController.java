package sist.com.orm;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sist.com.dao.MemberDao;
import sist.com.dto.BookingMovieBean;
import sist.com.dto.MemberBean;
import sist.com.dto.MovieBean;
import sist.com.dto.ReviewBean;
import sist.com.dto.boardBean;
import sist.com.dto.pageBean;

@Controller
public class MemberController {
	@Autowired
	MemberDao dao;
	@RequestMapping(value="loginIdCheck.do")
	public String loginIdCheck(MemberBean bean,Model model,String id) {
		
		String rsId=null;
		rsId=dao.loginIdCheck(id);
		if(rsId==null || rsId.equals("")) {
			model.addAttribute("bean",bean);
			dao.insertMember(bean);
			return "signin";
		}
		return"signup";
	}
	@RequestMapping(value="loginCheck.do")
	public String IdCheck(String id,String password,HttpSession session) {
		String dbPass=null;
		dbPass=dao.IdCheck(id);
		if(dbPass!=null && dbPass.equals(password.trim())) {
			session.setAttribute("id",id);
			session.setMaxInactiveInterval(600);
			return "redirect:index.jsp";
		}
		return "signin";
		
	}
	@RequestMapping(value="signup.do")
	public String signUp() {
		return "signup";
	}
	@RequestMapping(value="signin.do")
	public String signIn() {
		return "signin";
	}
	@RequestMapping(value="logOut.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "index";
	}
	/*@RequestMapping(value="MovieInfo")
	public String MovieInfo(@RequestParam(value="no",required=false)int no,Model model,MovieBean bean,HttpSession session) {
		bean=dao.movieInfo(no);
		session.setAttribute("no", no);
		model.addAttribute("bean",bean);
		return "MovieInfo";
	}*/
	   @RequestMapping(value="MovieInfo.do")
	   public String MovieInfo(@RequestParam(value="no",required=false)int no,Model model,MovieBean bean,HttpSession session) {
	      bean=dao.movieInfo(no);
	      session.setAttribute("no", no);
	      model.addAttribute("bean",bean);
	      
	      int movieNo = (Integer) session.getAttribute("no");
	      model.addAttribute("review", dao.selectReview(movieNo));
	      MovieBean mbean=dao.movieInfo(movieNo);
	      model.addAttribute("mbean",bean);

	      return "MovieInfo";
	   }
	   @RequestMapping(value="MovieInfo2.do")
	   public String MovieInfo2(Model model,MovieBean bean,HttpSession session) {
		  int no=(Integer)session.getAttribute("no");
		  bean=dao.movieInfo(no);
	      model.addAttribute("bean",bean);
	      
	      model.addAttribute("review", dao.selectReview(no));
	      MovieBean mbean=dao.movieInfo(no);
	      model.addAttribute("mbean",bean);

	      return "MovieInfo";
	   }
	  
	@RequestMapping(value="MyPage.do")
	public ModelAndView MyPage(HttpSession session,ModelAndView model) {
		String id=(String)session.getAttribute("id");

		model.addObject("ReviewList",dao.myReviewList(id));
		model.setViewName("MyPage");
		return model;
	}
	
	
	@RequestMapping(value="bookingList.do")
	public String MovieList(Model model,HttpSession session) {
		String id=null;
		id=(String)session.getAttribute("id");
		if(id==null) {
			return"index";
		}
		else {
		model.addAttribute("movieList",dao.movieList());
		}
		return"seatEx3";
	}
	
	@RequestMapping(value="seatBooking.do")
	public String  seatBooking(HttpSession session,
			@RequestParam(value="movie_no",required=false)String movie_no,
			@RequestParam(value="movie_name",required=false)String movie_name,
			@RequestParam(value="movie_loc",required=false)String movie_loc,
			@RequestParam(value="movie_regdate",required=false)String movie_regdate,
			@RequestParam(value="movie_screen",required=false)String movie_screen,
			@RequestParam(value="movie_time",required=false)String movie_time,Model model) 
	
	{
		HashMap<String,Object>map=new HashMap<String, Object>();
		map.put("movie_no", movie_no);
		map.put("movie_name", movie_name);
		map.put("movie_loc", movie_loc);
		map.put("movie_regdate", movie_regdate);
		map.put("movie_screen", movie_screen);
		map.put("movie_time", movie_time);
		session.setAttribute("map",map);
		int c=0;
		List<String> seat=null;
		 String dd="";
		 if(dao.checkMovieSc(map)==true){
			 seat=dao.selectMoveSc(map);
			 for(String sr : seat){
				 dd+=sr.trim().replace(" ","").concat((++c!=seat.size())?",":"");
			 }	   
		   }
		 session.setAttribute("dd",dd);
		return "redirect:SeatTest1.jsp";
	}
	@RequestMapping(value="SeatInsert.do")
	public String seatInsert(Model model,HttpSession session,BookingMovieBean bean) {
		bean.setBooking_charge(bean.getBooking_amount()*9000);
		dao.BookingMovieInsert(bean);
		return"redirect:MyPage.do";
	}
	/*@RequestMapping(value="SeatDelete.do")
	public String seatDelete(@RequestParam(value="booking_no",required=false)int booking_no,HttpSession session) {
		HashMap<String,Object>map=new HashMap<String, Object>();
		String id=(String)session.getAttribute("id");
		map.put("id", id);
		map.put("booking_no",booking_no);
		//dao.BookingDelete(map);
		System.out.println(map);
		session.setAttribute("id",id);
		return"redirect:mySeatList.do";
	}*/
	
	/////////////지혜//////////////////////////////////////////////

	   @RequestMapping(value="insertReview.do")
	   public String insertReview(ReviewBean bean,HttpSession session,Model model) {
	      dao.insertReview(bean); 
	      int movieNo = (Integer) session.getAttribute("no");
	      model.addAttribute("review", dao.selectReview(movieNo));
	      MovieBean mbean=dao.movieInfo(movieNo);
	      model.addAttribute("mbean",bean);
	      System.out.println("insertReview.do는 탄다 ^^");

	      return "redirect:MovieInfo2.do";
	   }
	@RequestMapping(value="uploadMovie.do")
	public String uploadMovie(MovieBean bean) {
		dao.uploadMovie(bean);
		System.out.println(bean);
		return "index";
	}
	@RequestMapping(value="infoVeiw.do")
	public String infoVeiw(Model model,int no,HttpSession session) {
		model.addAttribute("eachInfo",dao.selectMovie(no));
		session.setAttribute("no", no);
		return "MovieInfo";
	}
/////승원/////////////////////////////////////////////////////////////////////////

	// 게시판 글 작성 화면
			
		
			// 게시글 작성 , method = {RequestMethod.POST,RequestMethod.GET}
			@RequestMapping(value = "boardWrite.do")
			public String write(boardBean bean){
				dao.write(bean);
				return "redirect:/boardList.do";
			}
		
			
			/* 게시글 목록 페이징 시작 	*/ 
			@RequestMapping(value = "boardList.do")
			   public String communityListProcess(HttpServletRequest request, Model model,@RequestParam(value="data",required=false,defaultValue="null")String data) throws Exception {
			     
			    
			      int pageScale = 10;
			      int totalRow = 0;
			      int totalPage = 1;
			      int currentPage = 1;
			      totalRow = dao.getTotalRow();
			      totalPage = (totalPage = totalRow % pageScale == 0 ? (totalRow / pageScale):(totalRow / pageScale) + 1) == 0 ? 1 : totalPage;
			      try {
			         currentPage = 1;
			         String pageData = request.getParameter("page");
			         pageData = pageData == null ? "1" : pageData;
			         currentPage = Integer.parseInt(pageData);
			      } catch (Exception e) {
			    	  
			      }
			      pageBean pageBean = new pageBean(currentPage, totalPage,0, 0, 0);
			      // 1page --->1 10
			      // 2page---->11 20
			      /*
			       * 1BLOCK STARTPAGE ENDPAGE [1][2]....[10] 2BLOCK STARTPAGE ENDPAGE
			       * [11][2]....[20]
			       */
			      int start = 1 + (currentPage - 1) * pageScale;
			      int end = pageScale + (currentPage - 1) * pageScale;
			      int currentBlock = currentPage % pageScale == 0 ? (currentPage / pageScale)
			            : (currentPage / pageScale) + 1;
			      int startPage = 1 + (currentBlock - 1) * pageScale;
			      int endPage = (pageScale + (currentBlock - 1) * pageScale);
			      endPage = (endPage) >= totalPage ? totalPage : endPage;

			      pageBean.setStartPage(startPage);
			      pageBean.setEndPage(endPage);
			      pageBean.setCurrentBlock(currentBlock);
			      
			      HashMap<String, Object> map = new HashMap<String, Object>();
			      map.put("start", start);
			      map.put("end", end);

			      ArrayList<boardBean> pageList = (ArrayList<boardBean>) dao.listView(map);

			      model.addAttribute("boardList", pageList);

			      model.addAttribute("pageBean", pageBean);

			      return "boardList";
			   }
			
			// 게시판 조회
			@RequestMapping(value = "boardInfo.do")
			public String info(Model model,@RequestParam(value="bno",required=false,defaultValue="0")int bno){
				model.addAttribute("info", dao.info(bno));
				dao.boardHit(bno);
				return "infoView";	
			}
			
			// 게시판 수정뷰
			@RequestMapping(value = "updateView.do")
			public String updateView(boardBean bean, Model model){			
				model.addAttribute("update", dao.info(bean.getBno()));
				return "updateView";
			}
						
			
			// 게시판 수정
			@RequestMapping(value = "update.do")
			public String update(boardBean bean){
				
				dao.update(bean);
				
				return "redirect:/boardList.do";
			}

			// 게시판 삭제
			@RequestMapping(value = "delete.do")
			public String delete(boardBean bean) throws Exception{
				
				dao.delete(bean.getBno());
				
				return "redirect:/boardList.do";
			}
	
	
}
