
<%@page import="sist.com.dto.MovieScheduleBean"%>
<%@page import="sist.com.dao.MovieDao"%>
<%@page import="sist.com.dto.MovieBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
@charset "utf-8";
     body 
    {
       background-image:url("/orm/img/background.jpg");
   }
      div{
     background: #FFFFFF;
   }
div,a,p{
text-align: center;
}
.reservation{
   position: absolute;
   width:1030px;
   height:500px;
   left:0;
   right:0;
   left:0;
   top:0;
   bottom:0;
   margin: auto;
   
   
}
.vertical-menu {
  width: 250px;
  height:500px;
  float: left;
  border: 1px solid;
  overflow: auto;
  padding: 0;
  margin: 0;
   }

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
  text-align: center;
}

.vertical-menu a:hover {
  background-color: #ccc;
}

.vertical-menu a.active {
  background-color: #4CAF50;
  color: white;
}
div.theater{
   float: left;
   width: 49%;
   height: 50%; 
   padding: 0;
   margin: 0;
   
}
/* div.theater a{
   border: 1px;
} */
</style>

<script type="text/javascript">
var mTitle;
var mTheater;
var mDate;
var mScreen;
var mTime;
var arrayTname=[];
var arrayDate=[];
var arrayTime=[];
var final_Tname = [];
var final_Date = [];
var final_Time = [];
var mNo;

$( function() {
    
   var cnt=0;
    $("a.movie").click(function(){
       
       mNo=$(this).attr("lang");
       mTitle=$(this).attr("title");
       
       cnt++;
         if(cnt%2 == 0){
           $(this).css("background-color","");
        }else if(cnt%2!=0 && cnt!=0){
           $(this).css('backgroundColor','grey');
        } 
       
    
         $.ajax({
          url:'/orm/movieSchedule.do',
          type:'POST',
          dataType:'json',
          data:{no:$(this).attr("lang")},
          success:function(v){
              console.log(v);
              
              $(v).each(function(index,dom){   
                   console.log(dom);
                   console.log(index+"index")
                    var cntt=0;
                  $("a#mLoc").click(function(){
                      cntt++;
                       if(cntt%2 == 0){
                          $(this).css("background-color","");
                         
                       }else if(cntt%2!=0 && cntt!=0){
                          $(this).css('backgroundColor','grey');
                        
                       } 
                     var tloc=$.trim($(this).text());
                     if(tloc==dom.theater_loc){
                        arrayTname.push(dom.theater_name);
                        $.each(arrayTname, function(i, d){ 
                           if($.inArray(d, final_Tname) === -1) final_Tname.push(d);
                         });
                        
                     }
                     if(index == 2 ){
                        for (var i = 0; i < final_Tname.length; i++) {
                             $("div#sTheater").append("<label><input type='checkbox' id='tname' value='"+final_Tname[i]+"'>"+final_Tname[i]+"</label><br><br>");
                         }
                     }
                     
                      $("input#tname").click(function(){
                        // $("input#tname").remove();
                        mTheater=$("input:checkbox[id='tname']:checked").val();
                        arrayDate.push(dom.schedule_date);
                        $.each(arrayDate, function(i, d){ 
                            if($.inArray(d, final_Date) === -1) final_Date.push(d);
                         });  
                        if(index==2){
                           for (var i = 0; i < final_Date.length; i++) {
                              $("div#schedule").append("<label for='tdate'><input type='checkbox' id='tdate' name='"+final_Date[i]+"' value='"+final_Date[i]+"'>"+final_Date[i]+"</label><br><br>");
                           }
                        }
                        
                        $("input#tdate").click(function(){
                           mDate=$("input:checkbox[id='tdate']:checked").val();
                           
                           arrayTime.push(dom.schedule_time);
                           $.each(arrayTime, function(i, d){ 
                               if($.inArray(d, final_Time) === -1) final_Time.push(d);
                            });  
                           if(index==2){
                              for (var i = 0; i < final_Time.length; i++) {
                                 $("div#stime").append("<label><input type='checkbox' id ='time' name='"+dom.screen_name+"' value='"+final_Time[i]+"'>"+dom.screen_name+"<h4>"+final_Time[i]+"</h4><lable>");
                              }
                           }
                           
                           $("input#time").click(function(){
                               mTime=$("input:checkbox[id='time']:checked").val();
                               mScreen=$("input:checkbox[id='time']:checked").attr("name");
                               
                               if($("input[id='time']").is(":checked")){
                            	   document.location.href='seatBooking.do?movie_no='+mNo+'&movie_name='+mTitle+"&movie_loc="
                                   +mTheater+'&movie_regdate='+mDate+"&movie_screen="+mScreen+"&movie_time="+mTime;
                                  //document.location.href='SeatTest1.jsp?movie='+mTitle+"&theater="+mTheater+'&date='+mDate+"&screen="+mScreen+"&time="+mTime;
                               }
                              
                           });
                        });
                     });    //input click  
                });//a#mLoc Click
             }); //each 
             console.log(final_Tname); 
             console.log(final_Date);
             console.log(final_Time); 
          },//success
          error:function(v){
             alert('error');
          }
       }); //ajax
       
    });//click
  
  });

</script>
</head>
<body>

<div class="reservation">
   <div class="vertical-menu">
     <a href="#" class="active"><h3>영화 선택</h3></a>

      <c:forEach var="i" items="${movieList }">
         <a href="#" class="movie" title="${i.movie_title}" lang="${i.movie_no}"><h4>${i.movie_title}</h4></a>
      </c:forEach>
      <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>        
   </div>
   <div class="vertical-menu">
      <a href="#" class="active"><h3>극장 선택</h3></a>
         <div class="theater">
            <p  style="text-align: center;font-size: 20; "><h3>지역</h3></p>
              <a href="#" id="mLoc"><h4>서울</h4></a>
              <a href="#" id="mLoc"><h4>경기</h4></a>
              <a href="#" id="mLoc"><h4>충청/대전/세종</h4></a>
              <a href="#" id="mLoc"><h4>경상/대구/부산</h4></a>
              <a href="#" id="mLoc"><h4>전라/광주</h4></a>
              <a href="#" id="mLoc"><h4>강원</h4></a>
           <!--    <a href="#"><h3>제주</h3></a> -->
       
         </div>
         <div class="theater" id="sTheater"  >
            <p ><h3>상영관</h3></p>
      </div>
      
   </div>
   <div class="vertical-menu">
     <a href="#" class="active"><h3>관람일 선택</h3></a>
        <div id="schedule">
        </div>
        
   </div>
   <div class="vertical-menu">
     <a href="#" class="active" id="sTime"><h3>시간 선택</h3></a>
           <div id="stime">
        </div>
     
   </div>
</div>