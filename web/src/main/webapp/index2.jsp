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
  <script src="https://ajax.	googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   
   ICON
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
 -->
   
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>영화예매</title>
<!-- 
    Favicon
 -->
    <!-- <link rel="icon" href="img/core-img/favicon.ico"> -->
    
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
   .movieList{
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
    /* button#good{
    	
    } */
    div img#mainLogo{
    position: absolute;
   top: 0; bottom: 0;
   left:0; right: 0;
   margin: auto;
    }
    
</style>
 <script>
       $(function(){
         /*  $("a#signup").click(function(){
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
            
            }   */
            
            $.ajax({
               url:'/orm/mainMovieList.do',
               datatype:'text',
               success:function(v){
                     var listAppend=""; 
                  $(v).each(function(index,dom){
                      //좋아요버튼은 class="like" 예매버튼은 class="booking" 
                     listAppend+="<div class='movieList' >";
                     listAppend+="<a href='MovieInfo.do?no="+dom.movie_no+"'><img alt='' src='/orm/img/poster/"+dom.poster_img+"'></img></a>";
                     /* listAppend+="<div id='good' ><button id='heart'style='background-color:black;border-bottom: 2px'><i class='far fa-heart' style='font-size:24px;color:white;'></i></button>"; */
                     /* listAppend+="<a href='#'style='background-color:black; ><button class='booking' >예매</button></a></div>"; */
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

    <!-- ##### Header Area Start ##### -->

 <jsp:include page="/pages_css/header2.jsp"></jsp:include>
            
     
<!-- ##### Header Area End ##### -->
      <!--영화 메인 포스터  시작-->
    	<p class="">
        	<div  class="movieList_wrapper" >
    	</p>
      <!--영화 메인 포스터 끝  -->
   </div>

    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="./js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="./js/bootstrap/popper.min.js"></script> 
    <!-- Bootstrap js -->
    <!-- <script src="js/bootstrap/bootstrap.min.js"></script> -->
    <!-- All Plugins js -->
    <script src="./js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="./js/active.js"></script>
    
    <!-- Site footer Start -->
    <jsp:include page="/pages_css/footer.jsp"></jsp:include>
    <!-- Site footer End-->
    </body>

</html>