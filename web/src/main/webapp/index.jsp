<%@page import="sist.com.dto.MovieBean"%>
<%@page import="sist.com.dao.MovieDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>인덱스</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
   
   <!-- ICON -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

   
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>영화예매</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    
   </head>   
    <style>
    th{
      text-align: center;
   }
   
   .movieList_wrapper{
      width:1200px; 
      height: 500px;  
      margin: 50px; 
      text-align: center;  
      margin: 0 auto;
   }
   .movieList{s
      overflow: hidden; 
      position: relative; 
      float: left; 
      width: 230px; 
      height: 350px; 
      margin: 30px;
   }
    body 
    {
       background-image:url("/orm/img/background.jpg");
   }
    .booking{

    	opacity: 0.8;
    }
    .header-area .delicious-main-menu .classy-navbar .classynav > ul > li > a 
    {
      text-transform: uppercase;
      padding: 12px 18px 11px;
      background-color: transparent;
      border-bottom: 3px solid transparent;
      line-height: 1;
      color: white;
      font-weight: 600; 
    }
    .classynav ul li ul li a {
    padding: 0 20px;
    font-weight: 600;
    border-width: 10px;
    
	}
    ul.dropdown
    {
      text-transform: uppercase;
      padding: 12px 18px 11px;
      background-color: transparent;
      border-bottom: 3px solid transparent;
      line-height: 1;
      color: white;
      font-weight: 600; 
    } 
    a, a:hover, a:focus 
    {
     -webkit-transition-duration: 500ms;
     transition-duration: 500ms;
     text-decoration: none;
     outline: 0 solid transparent;
     color: #000000;
     font-weight: 600;
     font-size: 14px;
     color: white; 
    }
    
    .header-area .top-header-area .top-social-info a {
      display: inline-block;
      color: #40ba37;
      font-size: 13px;
      margin-right: 30px; }
    ul{ width: 100%;}  
     
    li#boxOffice{

       float: left; 
       overflow: hidden; 
       position: relative; 
       width: 230px; 
       height: 350px; 
       margin: 30px;
    }
    button{
    color: #ffffff;
    background-color: #40ba37;
    border-bottom: 3px solid #1c8314;
    }
    button#good{
    	
    }
    div img#mainLogo{
    position: absolute;
   top: 0; bottom: 0;
   left:0; right: 0;
   margin: auto;
    }
    
    /* footer  */
.site-footer
{
  background-color:#26272b;
  padding:45px 0 20px;
  font-size:15px;
  line-height:24px;
  color:#737373;
}
.site-footer hr
{
  border-top-color:#bbb;
  opacity:0.5
}
.site-footer hr.small
{
  margin:20px 0
}
.site-footer h6
{
  color:#fff;
  font-size:16px;
  text-transform:uppercase;
  margin-top:5px;
  letter-spacing:2px
}
.site-footer a
{
  color:#737373;
}
.site-footer a:hover
{
  color:#3366cc;
  text-decoration:none;
}
.footer-links
{
  padding-left:0;
  list-style:none
}
.footer-links li
{
  display:block
}
.footer-links a
{
  color:#737373
}
.footer-links a:active,.footer-links a:focus,.footer-links a:hover
{
  color:#3366cc;
  text-decoration:none;
}
.footer-links.inline li
{
  display:inline-block
}
.site-footer .social-icons
{
  text-align:right
}
.site-footer .social-icons a
{
  width:40px;
  height:40px;
  line-height:40px;
  margin-left:6px;
  margin-right:0;
  border-radius:100%;
  background-color:#33353d
}
.copyright-text
{
  margin:0
}
@media (max-width:991px)
{
  .site-footer [class^=col-]
  {
    margin-bottom:30px
  }
}
@media (max-width:767px)
{
  .site-footer
  {
    padding-bottom:0
  }
  .site-footer .copyright-text,.site-footer .social-icons
  {
    text-align:center
  }
}
.social-icons
{
  padding-left:0;
  margin-bottom:0;
  list-style:none
}
.social-icons li
{
  display:inline-block;
  margin-bottom:4px
}
.social-icons li.title
{
  margin-right:15px;
  text-transform:uppercase;
  color:#96a2b2;
  font-weight:700;
  font-size:13px
}
.social-icons a{
  background-color:#eceeef;
  color:#818a91;
  font-size:16px;
  display:inline-block;
  line-height:44px;
  width:44px;
  height:44px;
  text-align:center;
  margin-right:8px;
  border-radius:100%;
  -webkit-transition:all .2s linear;
  -o-transition:all .2s linear;
  transition:all .2s linear
}
.social-icons a:active,.social-icons a:focus,.social-icons a:hover
{
  color:#fff;
  background-color:#29aafe
}
.social-icons.size-sm a
{
  line-height:34px;
  height:34px;
  width:34px;
  font-size:14px
}
.social-icons a.facebook:hover
{
  background-color:#3b5998
}
.social-icons a.twitter:hover
{
  background-color:#00aced
}
.social-icons a.linkedin:hover
{
  background-color:#007bb6
}
.social-icons a.dribbble:hover
{
  background-color:#ea4c89
}
@media (max-width:767px)
{
  .social-icons li.title
  {
    display:block;
    margin-right:0;
    font-weight:600
  }
}
div buttion#heart{
	
}
    </style>
 <script>
       $(function(){
          $("a#signup").click(function(){
             //window.open("/orm/jsp/signup.jsp",'left=300,top=100,width=400,height=300')
             document.location.href='/orm/jsp/signup.jsp';
          });
          $("a#signin").click(function(){
             //window.open("/orm/jsp/signin.jsp",'left=300,top=100,width=400,height=300')
             document.location.href='/orm/jsp/signin.jsp';
          });
          $("#btnSearch").click(function(){
             var searchData=$("input#movieSearch").val();
             if(searchData.length==0){
               alert('영화명을 입력해 주세요');
               $("input#movieSearch").val('');
               $("input#movieSearch").focus();
             }else{
                alert(searchData);
                $("form#searchFrm").submit();
             }
            
          });

          if("${id}"!=null && "${id}".length>0){
             if("${id}".length>0 && "${id}"!='admin'){
            $("a#mypage").show();
            $("a#logOut").show();
            $("a#sign").hide();
            $("a#signup").hide();
            $("a#signup").hide();
            $("a#adminpage").hide();}
             if("${id}".length>0 && "${id}"=='admin'){ 
                $("a#mypage").hide();
                $("a#logOut").show();
                $("a#sign").hide();
                $("a#signup").hide();
                $("a#signup").hide();
                $("a#adminpage").show();}
             }
            else{
               $("a#adminpage").hide();
               $("a#mypage").hide();
               $("a#logOut").hide();
               $("a#sign").show();
            
            }  
            
            $.ajax({
               url:'/orm/mainMovieList.do',
               datatype:'text',
               success:function(v){
                     var listAppend=""; 
                  $(v).each(function(index,dom){
                      //좋아요버튼은 class="like" 예매버튼은 class="booking" 
                     listAppend+="<div class='movieList' >";
                     listAppend+="<a href='MovieInfo.do?no="+dom.movie_no+"'><img alt='' src='/orm/img/poster/"+dom.poster_img+"'></img></a>";
                     listAppend+="<div id='good' ><button id='heart'style='background-color:black;border-bottom: 2px'><i class='far fa-heart' style='font-size:24px;color:white;'></i></button>";
                     listAppend+="<a href='#'style='background-color:black; ><button class='booking' >예매</button></a></div>";
                     listAppend+="</div> ";  
                  });
                   $("div.movieList_wrapper").append(listAppend); 
               },
               eroor:function(){
                  alert('error');
               }
            });

       });
  
    </script>


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
                <div><a href="index.jsp"><img id="mainLogo" src="img/mainLogo.png" alt="" style="padding-bottom: 100px;"></a></div>
                <!--     Breaking News -->
                    <div class="col-12 col-sm-6">
                    	
                        <div class="breaking-news">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">Hello World!</a></li>
                                    <li><a href="#">Welcome to MovieBox</a></li>
                                   <!--  <li><a href="#">Have a goo time!</a></li> -->
                                </ul>
                            </div>
                        </div>
                    </div>
 
          
                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                          <!--   <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> -->
                            <a href="signup.do" id="signup" >회원가입</a><!--로그인시 hidden 처리되게  -->
                            <a href="signin.do" id="sign" >로그인</a><!--로그인시 '로그아웃'으로 바뀌게 하기  -->
                            <a href="logOut.do" id="logOut" >로그아웃</a><!--로그인시 '로그아웃'으로 바뀌게 하기  -->
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
                            <div class="classynav" style="position: absolute;">
                                <ul "class="nav-item active">
                                    <!-- <li class="active"><a href="index.jsp">Home</a></li> -->
                                    <li><a href="#" style="padding-right: 68px; padding-left: 68px;">영  화</a>
                                        <ul class="dropdown">
                                            <li><a href="index.jsp">홈</a></li>
                                            <li><a href="about.html">박스오피스</a></li>
                                            <li><a href="blog-post.html">상영예정작</a></li>
                                            <li><a href="receipe-post.html">무비파인더</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#" style="padding-right: 68px; padding-left: 68px;">예  매</a>
                                      <ul class="dropdown">
                                            <li><a href="/orm/bookingList.do">빠른예매</a></li>
                                           <!--  <li><a href="#">상영시간표</a></li> -->
                                      </ul>
                                    </li>
                                    <li><a href="#" style="padding-right: 68px; padding-left: 68px;">극  장</a>
                                      <ul class="dropdown">
                                            <li><a href="index.html">전체극장</a></li>
                          
                                      </ul>
                                    </li>
                                    <li><a href="receipe-post.html" style="padding-right:68px; padding-left: 68px;">이벤트</a>
                                     <ul class="dropdown">
                                            <li><a href="index.html">진행중 이벤트</a></li>
                                            <li><a href="about.html">지난 이벤트</a></li>
                                            <li><a href="about.html">당첨자 발표</a></li>
                                      </ul>
                                    </li>
                                    <!-- <li><a href="receipe-post.html" style="padding-right: 68px; padding-left: 68px;">스토어</a></li> -->
                                    <li><a href="contact.html" style="padding-right: 68px; padding-left: 68px;">혜택</a>
                                       <ul class="dropdown">
                                            <li><a href="index.html">메가 박스</a></li>
                                            <li><a href="about.html">제휴/할인</a></li>
                                            <li><a href="about.html">당첨자 발표</a></li>
                                      </ul>
                                    </li>
                                    <li><a id="mypage" href="MyPage.do" style="padding-right: 68px; padding-left: 68px;">마이페이지</a></li>
                                    <li><a id="adminpage" href="#" style="padding-right: 68px; padding-left: 68px;">관리자페이지</a>
                                       <ul class="dropdown">
                                           <li><a href="/orm/uploadMovie.jsp">영화입력</a></li>
                                           <li><a href="#">게시글 관리</a></li>
                                           <li><a href="#">Q&A게시판 등록</a></li>
                                           <li><a href="#">Q&A게시판 수정</a></li>
                                           
                                     </ul>
                                    </li>
                                    
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
    


    <div width: 100%; height: 600px">
       <!-- <div class="contentArea">
         <div class="tab_box">
            <button type="button" class="tab_box_btn" sort="boxoRankList" style="width: 100px; height: 30px;">박스오피스</button>
         </div>
       </div> -->
       
       
        <!--영화 메인 포스터  시작-->
       
          <!--영화 메인 포스터  시작-->
        <p class="">
           <div  class="movieList_wrapper" >
        </p>
        
      <!--영화 메인 포스터 끝  -->

      
   </div>
      <!--검색 바 시작-->
      <form id="searchFrm" action="/orm/movieSearch.jsp" method="post">
         <div class="search-link">
            <div class="cell">
               <div class="search">
               <input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" class="input-text" id="searchData" name="searchData">
               <button type="button" class="btn" id="btnSearch"><i class="iconset ico-search-w"></i> 검색</button>
               </div>
            </div>
      
               <div class="cell"><a href="#" title="상영시간표 보기"><i class="fas fa-calendar-alt" style="font-size:24px;color:white;"></i> 상영시간표</a></div>
               <div class="cell"><a href="#" title="박스오피스 보기"><i class="fas fa-film" style="font-size:24px;color:white;"></i> 박스오피스</a></div>
               <div class="cell"><a href="#" title="빠른예매 보기"><i class="fas fa-ticket-alt" style="font-size:24px;color:white;"></i> 빠른예매</a></div>
         </div>
         </form>
      <!--검색바 끝 -->
      
      

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
    
    <!-- Site footer -->
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="#">고객센터</a></li>
              <li><a href="#">자주묻는질문</a></li>
              <li><a href="#">1:1 문의</a></li>
              <li><a href="#">단체/대관문의</a></li>
              <li><a href="#">분실물 문의/접수</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="#">회사소개</a></li>
              <li><a href="#">인재채용</a></li>
              <li><a href="#">사회공헌</a></li>
              <li><a href="#">이용약관</a></li>
              <li><a href="#">개인정보처리방침</a></li>
              <li><a href="#">제휴/광고/부대사업문의</a></li>
              <li><a href="#">윤리경영</a></li>
            </ul>
          </div>
          
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어) ARS 1544-0070 
                              대표자명 김진선 · 개인정보보호책임자 조상연 · 사업자등록번호 211-86-59478 · 통신판매업신고번호 제 833호</p>
          </div>
          
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">COPYRIGHT &copy; MegaboxJoongAng, Inc. All rights reserved 
         <a href="#">Scanfcode</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
</body>

</html>