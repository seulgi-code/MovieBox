
<%@page import="sist.com.dao.MemberDao"%>
<%@page import="sist.com.dto.MemberBean"%>
<%@ page language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=7" />
	<meta http-equiv="imagetoolbar" content="no" />
	<link href="/orm/css/contents.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="style.css"><style>

tbody#myPage tr{
	font-size: 17px;
}
a:hover{
background-color: #40ba37;
}

div#homeBody h2, b
{
color:white;
}

a#info, a#seat{
color:white;
}
.nav-tabs>li>a {
    margin-right: 2px;
    line-height: 1.42857143;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
    color: #FFFFFF;
}

body 
    {
       background-image:url("/orm/img/background.jpg");

   }

tr th {
   text-align: center;
}

td {
   text-align: center;
   color:#FFFFFF;
}
.bbsList tbody td{
	border-right: 1px solid #ddd
}
span{
	color:#FFFFFF;
} 
.bbsList thead th {
	border-right: 1px solid #ddd
} 
</style>
    <title>영화예매</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
 <script>
 	if("${id}"==null && "${id}".length<0){
	 window.location="/orm/index.jsp"
 	}
 	
 	
 	function memberinfo(){
 		$.ajax({
			url:'/orm/memberInfo.do',
			type:'post',
			dataType:'json',
			data:{id:'${id}'},
			success:function(v){
				$("#myPage").append("<tr><td>이름:"+v.name+"</td></tr>");
				$("#myPage").append("<tr><td>생년원일:"+v.birth+"</td></tr>");
				$("#myPage").append("<tr><td>Tel:"+v.tel+"</td></tr>");
				$("#myPage").append("<tr><td>E-mail:"+v.email+"</td></tr>");
			},error:function(){
				alert("error");
			}
		});
 	}
 	function mySeatList(){
 		$.ajax({
			url:'/orm/mySeatList.do',
			type:'post',
			dataType:'json',
			data:{id:'${id}'},
			success:function(v){

				 $(v).each(function(i,d){
					console.log(d.booking_no)
					$("#seat").append("<tr>");
					$("#seat").append("<td>"+d.booking_no+"</td>");
					$("#seat").append("<td>"+d.movie_regdate+"</td>");
					$("#seat").append("<td>"+d.movie_name+"</td>");
					$("#seat").append("<td>"+d.movie_loc+"</td>");
					$("#seat").append("<td>"+d.movie_screen+"</td>");
					$("#seat").append("<td>"+d.movie_time+"</td>");
					$("#seat").append("<td>"+d.seat+"</td>");
					$("#seat").append("<td>"+d.booking_amount+"</td>");
					$("#seat").append("<td>"+d.booking_charge+"원</td>");
					/* $("#seat").append("<td><a href='SeatDelete.do?booking_no="+d.booking_no+"'>"+"<button>예매취소</button></a></td>"); */
					$("#seat").append("</tr>");
					/*	<c:forEach var="i" items="${SeatList}" varStatus="cnt">
								<tr>
									<td>${i.booking_no}</td>
									<td>${i.movie_regdate}</td>
									<td>${i.movie_name}</td>
									<td>${i.movie_loc}</td>
									<td>${i.movie_screen}</td>
									<td>${i.movie_time}</td>
									<td>${i.seat}</td>
									<td>${i.booking_amount}</td>
									<td>${i.booking_charge}원</td>
									<td><a href="SeatDelete.do?booking_no=${i.booking_no}"><button>예매취소</button></a></td>
								</tr>
							</c:forEach>  */
				})
			},error:function(){
				alert("error");
			}
		});
 	}

    	$(function(){
    		memberinfo();
    		mySeatList();
    		
    	});

    
    </script>
</head>

<body>

    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/salad.png" alt="">
    </div>

    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <input type="search" name="search" placeholder="Type any keywords...">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

       <!--  Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                <!--     Breaking News -->
                    <div class="col-12 col-sm-6">
                        <div class="breaking-news">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">Hello World!</a></li>
                                    <li><a href="#">Welcome to MovieBox!!</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
 
          
                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="logOut.do" id="signout">로그아웃</a><!--로그인시 '로그아웃'으로 바뀌게 하기  -->
                            <a href="boardList.do">고객센터</a>
                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="#"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                          <div class="classynav"> 
                              <ul>
                                  <li><a href="index.jsp" style="color: white;">Home</a></li>
                                  <li><a style="color: white;" href="#">영화</a>
                                      <ul class="dropdown">
                                          <li><a style="color: white;" href="index.jsp?id="+${id}>홈</a></li>
                                          <li><a style="color: white;" href="about.html">박스오피스</a></li>
                                          <li><a style="color: white;" href="blog-post.html">상영예정작</a></li>
                                          <li><a style="color: white;" href="receipe-post.html">무비파인더</a></li>
                                      </ul>
                                  </li>
                                  <li><a href="#" style="color: white;">예매</a>
                                    <ul class="dropdown">
                                          <li><a style="color: white;" href="/orm/bookingList.do">빠른예매</a></li>
                                          <li><a style="color: white;" href="about.html">상영시간표</a></li>
                                    </ul>
                                  </li>
                                  <li><a href="#" style="color: white;">극장</a>
                                    <ul class="dropdown">
                                          <li><a style="color: white;" href="index.html">전체극장</a></li>
                                          <li><a style="color: white;" href="about.html">특별관</a></li>
                                    </ul>
                                  </li>
                                  <li><a style="color: white;" href="receipe-post.html">이벤트</a>
                                   <ul class="dropdown">
                                          <li><a style="color: white;" href="index.html">진행중 이벤트</a></li>
                                          <li><a style="color: white;" href="about.html">지난 이벤트</a></li>
                                          <li><a style="color: white;" href="about.html">당첨자 발표</a></li>
                                    </ul>
                                  </li>
                                  <li><a style="color: white;" href="receipe-post.html">스토어</a></li>
                                  <li><a style="color: white;" href="contact.html">혜택</a>
                                     <ul class="dropdown">
                                          <li><a style="color: white;" href="index.html">메가 박스</a></li>
                                          <li><a style="color: white;" href="about.html">제휴/할인</a></li>
                                          <li><a style="color: white;" href="about.html">당첨자 발표</a></li>
                                    </ul>
                                  </li>
                                  <li class="active"><a id="mypage" style="color: white;" href="/orm/MyPage.jsp">마이페이지</a></li>
                              </ul>
             
                              <!-- Newsletter Form -->
                          <!--     <div class="search-btn">
                                  <i class="fa fa-search" aria-hidden="true"></i>
                              </div> -->
                          <!-- <div class="link-area">
                           <a href="#" class="header-icon-join" title="마이 페이지" style="margin-right: 10px;">마이페이지</a>
                           <a href="#" class="header-icon-ticket" title="상영시간표">상영시간표</a>
                          </div> -->

                          </div>

                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    


    <div width: 100%; height: 600px" id="homeBody">
    <body>
<div class="container">
 <p style="color: white; font-size: 30px; font-weight: bold;" >마이페이지</p>
  <table>
  	<thead>
  		<b style="font-size: 20px">${id}님</b>  
  		
  	</thead>
  </table>
 <ul class="nav nav-tabs" style="margin-top: 20px;">
    <li><a data-toggle="tab" href="#menu1">내정보</a></li>
    <li><a data-toggle="tab" href="#menu2">예매내역</a></li>
    <li><a data-toggle="tab" href="#menu3">내 리뷰</a></li>
  </ul>

  <div class="tab-content">
    <div id="menu1" class="tab-pane fade" >
       <table>
      	<tbody id="myPage"><br><br><br>
      	
      	</tbody>
      </table>
    </div>
    <div id="menu2" class="tab-pane fade">
      <div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<form action="" method="post" name="searchFrm">
					<table class="bbsWrite mgb35">
						<tbody>
						<tr>
							<td style="text-align: right;">
								<span>검색날짜<input type="date">~<input type="date"></span><button id="serach">조회</button>
							</td>
						</tr>
						</tbody>
					</table>
					</form>
					<table class="bbsList">
						<colgroup>
						
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							
						</colgroup>
						<thead>
						
						 <tr>
		                     
		                     <th scope="col">예매번호</th>
		                     <th scope="col">예매날짜</th>
		                     <th scope="col">영화제목</th>
		                     <th scope="col">영화관</th>
		                     <th scope="col">상영관</th>
		                     <th scope="col">영화시간</th>
		                     <th scope="col">좌석</th>
		                     <th scope="col">좌석수</th>
		                     <th scope="col">가격</th>
		                  </tr>
						</thead>	
						<tbody id="seat">
							
						
							
							
						</tbody>
					</table>

					<div class="paging">
						<a href="#"><img src="/orm/img/button/btn_first.gif" alt="처음페이지" /></a>
						<a href="#"><img src="/orm/img/button/btn_prev.gif" alt="이전"></a>
						<a href="#">1</a>
						<a href="#"><img src="/orm/img/button/btn_next.gif" alt="다음" /></a>
						<a href="#"><img src="/orm/img/button/btn_last.gif" alt="마지막페이지" /></a>
						<span>
					
						</span>	
				
					</div>
				</div>
			</div>
		</div>
      
    </div>
    <div id="menu3" class="tab-pane fade">
      <div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<table class="bbsList">
						<colgroup>
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
						</colgroup>
						
						
						<thead>

						<tr>
							<th>번호</th>
							<th>영화제목</th>
							<th>영화감상평</th>
							<th>평점</th>
							<th>날짜</th>

						</tr>
						</thead>	
						<tbody>
						
									
						 <c:forEach var="s" items="${ReviewList}" varStatus="cnt">
							<tr>
								<td>${cnt.count }</td>
								<td>${s.movie_title}</td>
								<td>${s.con}</td>
								<td>${s.rating}</td>
								<td>${s.regdate}</td>
							</tr>
						</c:forEach>
						
							
						</tbody>
					</table>

					<div class="paging">
					
						<a href="#"><img src="/orm/img/button/btn_first.gif" alt="처음페이지" /></a>
						<a href="#"><img src="/orm/img/button/btn_prev.gif" alt="이전"/></a>
						<a href="#">1</a>
						<a href="#"><img src="/orm/img/button/btn_next.gif" alt="다음" /></a>
						<a href="#"><img src="/orm/img/button/btn_last.gif" alt="마지막페이지" /></a>
						<span>
					
						</span>	
				
					</div>
				</div>
			</div>
		</div>
    </div>
    <%-- <div id="menu4" class="tab-pane fade">
      <div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<table>
						<thead>
							<tr >
								<td style="text-align: right;">예매번호조회<input type="text" id="serachData"><button id="movieSerach">조회</button></td>
							</tr>
						</thead>
					</table>
					<table class="bbsList" id="reservationMovie">
						<colgroup>
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							
						</colgroup>
						<thead>
						<tr>
							<th scope="col">예매번호</th>
							<th scope="col">영화제목</th>
							<th scope="col">상영관번호</th>
							<th scope="col">상영시간</th>
							<th scope="col">좌석번호</th>
							<th scope="col">출력</th>
						</tr>
						</thead>	
						<tbody>
							<tr>
								<td id="num">1122</td>
								<td>늑대의시간</td>
								<td>1관</td>
								<td>11:40~13:20</td>
								<td>A3</td>
								<td><button id="print">출력</button></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
    </div> --%>
    </div>
  </div>

</body>
    
        
   </div>

    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>