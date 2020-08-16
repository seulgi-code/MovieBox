
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insertvalue here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
   
     body 
    {
       background-image:url("/orm/img/background.jpg");
   }
   p{
      color: white;    
   }
   button{
        border:1px solid #ccc; 
      background: #FFFFFF;
      text-align: center;
   }
   div.count{
      position: absolute;
      top:80px;
      left:270px;
      margin: auto;
      height: 50px;
      width: 500px;
      
   }
   div#select {
      position: absolute;
      text-align: center;
   }
   div button{
      position: absolute;
      text-align: center;
   }
   
   button.people{
      position: absolute;
      top: 13px;
      width: 30px;
      height: 30px;
      
   }
   
    button#seat{
      width: 30px;
   }
   div#srow button{
      left: 220px; 
      width: 20px;
      color: gray; 
   }
/* 예매좌석 정보  */
 div.result{
  /* background-color: lightgrey; */
  position:absolute;
  left:1000px;
  width: 250px;
  height:400px;
  border: 3px solid #40ba37   ;
  padding: 50px;
  margin: 20px;
 }

/* 예매좌석 정보  */
</style>

<script type="text/javascript">
<%-- var seat='<%=seat%>' --%>
function seatArray(){
	var seatArray;
}
$(function(){
	
   //제약조건
   //$("input#seat").val()
   //예약좌석 보여주기
     $("input[type='hidden']").each(function(index,dom){
       $("button#seat").each(function(i,d){
         if($(d).attr("title")==$(dom).val()){
            $(this).attr('disabled', true);
            $(this).css("background-color","gray")
         }
      }); 
      
      
   }); 

   var clickCount=0;//클릭한 좌석수 기억
   var s=0;
   var array=new Array();
   var state=false;
  var reset=false;
   var scr;
   var stime;
    $("button#seat").each(function(index,dom){
    	 var cnt = 0; 
         $(dom).click(function(){
        	  
         //제약조건 : 인원 수를 선택하지 않고 좌석을 선택했을때 alert
          if(!state ){
               alert('관람하실 인원을 먼저 선택해주세요.');
            } 
         //버튼을 클릭 or 해제했을 때 이벤트 
       
            cnt++;
            if(cnt%2 == 0){
               $(this).css("background-color","");
               clickCount--;
               array.splice(array.indexOf($(this).attr("title")),1);
               //console.log(array);
            }else if(cnt%2!=0 && cnt!=0){
               $(this).css("background-color","#40ba37");
               clickCount++;
               array.push($(this).attr("title"));
               $("div#result").append("<p>llllll</p>");
            }
         });
         
       
    });//button.seat
    //reset버튼을 클릭했을 때 이벤트
       $("button#reset").click(function(){
    	   /* reset=true; */
    	   
    	   $("p#seatArray").empty();
    	   
    	   $("button#seat").each(function(index,dom){
    		   for(var i=0;i<clickCount;i++){
    		   if($(dom).attr("title")==array[i]){
    			   $(dom).css("background","");
                   $(dom).prop("disabled",true);
    		   		
    		   array.splice(array.indexOf($(dom).attr("title")),1);
    		   }
    		   }
    	   })
    	   s=0;
    	   alert(s);
    	 clickCount=0;
    	 $("button.people").prop("disabled",false);
         $("button.people").css("background",""); 
         state=false;
      });     
       
           
      $("button.people").each(function(index,dom){
         $(dom).click(function(){
            state=true;
            $("button#seat").prop("disabled",false);
            $(this).css("background-color","#40ba37")
            $("button.people").prop("disabled",true);
           	s=$(this).val();
           	alert(s);
            switch (s) {
            case "1":
                  $("button#seat").click(function(){
                     if(clickCount==1){
                        $("button#seat").prop("disabled",true);
                        setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
                     }
                  });
               break;
            case "2":
               $("button#seat").click(function(){
                  if(clickCount==2){
                     $("button#seat").prop("disabled",true);
                     setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
                  }
               });
               break;
            case "3":
               $("button#seat").click(function(){
                  if(clickCount==3){
                     $("button#seat").prop("disabled",true);
                     setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
                  }
               });
               break;
            case "4":
               $("button#seat").click(function(){
                  if(clickCount==4){
                     $("button#seat").prop("disabled",true);
                     setTimeout(function(){ alert("좌석 선택이 완료됐습니다."); }, 500);
                  }

               });
            break;
            default:
            break;
            }
         })
      });
      $("button#seat").click(function(){
       $("p#seatArray").text(array); 
      });
      
      
      $("input#sub").click(function() {

         document.location.href='SeatInsert.do?movie_name='+"${map.movie_name}"+
        		 '&movie_loc='+"${map.movie_loc}"+'&movie_regdate='+"${map.movie_regdate}"+
        		 '&movie_screen='+"${map.movie_screen}"+'&movie_time='+
        		 "${map.movie_time}"+'&id='+"${id}"+'&seat='+array+
        		 '&booking_amount='+array.length; 
 

      });
});

</script>
 
</head>
<body>

<c:forEach var="i" items="${dd}" varStatus="cnts">
<input type="hidden" value=${i}>
</c:forEach>

      <div class="count">
          <p style="margin-left: 10px;" >관람인원</p> 
         <button class="people" value="1" style="left: 100px;">1</button>
         <button class="people" value="2" style="left: 130px;">2</button>
         <button class="people" value="3" style="left: 160px;">3</button>
         <button class="people" value="4" style="left: 190px;">4</button>


         <button id="reset" value="0"  style="left: 400px;  top: 15px; width: 50px; height: 30px; ">reset</button>
      </div> <!-- 인원 button-->
 
<div>     
      <div style="border: 1px solid; text-align: center; position: absolute; left: 270px; top: 150px; width: 510px; background: gray;">스크린</div>
      
      <div id="srow">
         <button type="button"value="A행" disabled="disabled" style=" top: 200px;">A</button>
         <button type="button"value="B행" disabled="disabled" style=" top: 225px;">B</button>
         <button type="button"value="C행" disabled="disabled" style=" top: 250px; ">C</button>
         <button type="button"value="D행" disabled="disabled" style=" top: 275px; ">D</button>
         <button type="button"value="E행" disabled="disabled" style=" top: 300px; ">E</button>
         <button type="button"value="F행" disabled="disabled" style=" top: 325px; ">F</button>
         <button type="button"value="G행" disabled="disabled" style=" top: 350px; ">G</button>
         <button type="button"value="H행" disabled="disabled" style=" top: 375px; ">H</button>
         <button type="button"value="I행" disabled="disabled" style=" top: 400px; ">I</button>
         <button type="button"value="J행" disabled="disabled" style=" top: 425px; ">J</button>
      </div><!--열 button -->
      <form method="post" action="" >
      <div id="dseat1"> 
      
         <button type="button" title="A1" id="seat" style=" left: 270px; top: 200px; ">1</button>
         <button type="button" title="A2" id="seat" style=" left: 300px; top: 200px; ">2</button>
         <button type="button" title="A3" id="seat" style=" left: 330px; top: 200px; ">3</button>
         
         <button type="button" title="A4" id="seat" style=" left: 425px; top: 200px; ">4</button>
         <button type="button" title="A5" id="seat" style=" left: 420px; top: 200px; ">5</button>
         <button type="button" title="A6" id="seat" style=" left: 450px; top: 200px; ">6</button>
         <button type="button" title="A7"  id="seat" style=" left: 480px; top: 200px; ">7</button>
         <button type="button" title="A8" id="seat" style=" left: 510px; top: 200px; ">8</button>
         <button type="button" title="A9" id="seat" style=" left: 540px; top: 200px; ">9</button>
         <button type="button" title="A10" id="seat" style=" left: 570px; top: 200px; ">10</button>
         <button type="button" title="A11" id="seat" style=" left: 600px; top: 200px; ">11</button>
         <button type="button" title="A12" id="seat" style=" left: 630px; top: 200px; ">12</button>
         
         <button type="button" title="A13" id="seat" style=" left: 690px; top: 200px; ">13</button>
         <button type="button" title="A14" id="seat" style=" left: 720px; top: 200px; ">14</button>
         <button type="button" title="A15" id="seat" style=" left: 750px; top: 200px; ">15</button>


       <button type="button" title="B1" id="seat" style=" left: 270px; top: 225px; ">1</button>
         <button type="button" title="B2" id="seat" style=" left: 300px; top: 225px; ">2</button>
         <button type="button" title="B3" id="seat" style=" left: 330px; top: 225px; ">3</button>
         
         <button type="button" title="B4"  id="seat" style=" left: 425px; top: 225px; ">4</button>
         <button type="button" title="B5"  id="seat" style=" left: 420px; top: 225px; ">5</button>
         <button type="button" title="B6"  id="seat" style=" left: 450px; top: 225px; ">6</button>
         <button type="button" title="B7"  id="seat" style=" left: 480px; top: 225px; ">7</button>
         <button type="button" title="B8"  id="seat" style=" left: 510px; top: 225px; ">8</button>
         <button type="button" title="B9"  id="seat" style=" left: 540px; top: 225px; ">9</button>
         <button type="button" title="B10" id="seat" style=" left: 570px; top: 225px; ">10</button>
         <button type="button" title="B11" id="seat" style=" left: 600px; top: 225px; ">11</button>
         <button type="button" title="B12" id="seat" style=" left: 630px; top: 225px; ">12</button>
         
         <button type="button" title="B13" id="seat" style=" left: 690px; top: 225px; ">13</button>
         <button type="button" title="B14" id="seat" style=" left: 720px; top: 225px; ">14</button>
         <button type="button" title="B15" id="seat" style=" left: 750px; top: 225px; ">15</button>

       <button type="button" title="C1" id="seat" style=" left: 270px; top: 250px; ">1</button>
         <button type="button" title="C2" id="seat" style=" left: 300px; top: 250px; ">2</button>
         <button type="button" title="C3" id="seat" style=" left: 330px; top: 250px; ">3</button>
         
         <button type="button" title="C4"  id="seat" style=" left: 425px; top: 250px; ">4</button>
         <button type="button" title="C5"  id="seat" style=" left: 420px; top: 250px; ">5</button>
         <button type="button" title="C6"  id="seat" style=" left: 450px; top: 250px; ">6</button>
         <button type="button" title="C7"  id="seat" style=" left: 480px; top: 250px; ">7</button>
         <button type="button" title="C8"  id="seat" style=" left: 510px; top: 250px; ">8</button>
         <button type="button" title="C9"  id="seat" style=" left: 540px; top: 250px; ">9</button>
         <button type="button" title="C10" id="seat" style=" left: 570px; top: 250px; ">10</button>
         <button type="button" title="C11" id="seat" style=" left: 600px; top: 250px; ">11</button>
         <button type="button" title="C12" id="seat" style=" left: 630px; top: 250px; ">12</button>
         
         <button type="button" title="C13" id="seat" style=" left: 690px; top: 250px; ">13</button>
         <button type="button" title="C14" id="seat" style=" left: 720px; top: 250px; ">14</button>
         <button type="button" title="C15" id="seat" style=" left: 750px; top: 250px; ">15</button>
         
         
       <button type="button" title="D1" id="seat" style=" left: 270px; top: 275px; ">1</button>
         <button type="button" title="D2" id="seat" style=" left: 300px; top: 275px; ">2</button>
         <button type="button" title="D3" id="seat" style=" left: 330px; top: 275px; ">3</button>
         
         <button type="button" title="D4"  id="seat" style=" left: 425px; top: 275px; ">4</button>
         <button type="button" title="D5"  id="seat" style=" left: 420px; top: 275px; ">5</button>
         <button type="button" title="D6"  id="seat" style=" left: 450px; top: 275px; ">6</button>
         <button type="button" title="D7"  id="seat" style=" left: 480px; top: 275px; ">7</button>
         <button type="button" title="D8"  id="seat" style=" left: 510px; top: 275px; ">8</button>
         <button type="button" title="D9"  id="seat" style=" left: 540px; top: 275px; ">9</button>
         <button type="button" title="D10" id="seat" style=" left: 570px; top: 275px; ">10</button>
         <button type="button" title="D11" id="seat" style=" left: 600px; top: 275px; ">11</button>
         <button type="button" title="D12" id="seat" style=" left: 630px; top: 275px; ">12</button>
         
         <button type="button" title="D13" id="seat" style=" left: 690px; top: 275px; ">13</button>
         <button type="button" title="D14" id="seat" style=" left: 720px; top: 275px; ">14</button>
         <button type="button" title="D15" id="seat" style=" left: 750px; top: 275px; ">15</button>
         
         
       <button type="button" title="E1" id="seat" style=" left: 270px; top: 300px; ">1</button>
         <button type="button" title="E2" id="seat" style=" left: 300px; top: 300px; ">2</button>
         <button type="button" title="E3" id="seat" style=" left: 330px; top: 300px; ">3</button>
         
         <button type="button" title="E4"  id="seat" style=" left: 425px; top: 300px; ">4</button>
         <button type="button" title="E5"  id="seat" style=" left: 420px; top: 300px; ">5</button>
         <button type="button" title="E6"  id="seat" style=" left: 450px; top: 300px; ">6</button>
         <button type="button" title="E7"  id="seat" style=" left: 480px; top: 300px; ">7</button>
         <button type="button" title="E8"  id="seat" style=" left: 510px; top: 300px; ">8</button>
         <button type="button" title="E9"  id="seat" style=" left: 540px; top: 300px; ">9</button>
         <button type="button" title="E10" id="seat" style=" left: 570px; top: 300px; ">10</button>
         <button type="button" title="E11" id="seat" style=" left: 600px; top: 300px; ">11</button>
         <button type="button" title="E12" id="seat" style=" left: 630px; top: 300px; ">12</button>
         
         <button type="button" title="E13" id="seat" style=" left: 690px; top: 300px; ">13</button>
         <button type="button" title="E14" id="seat" style=" left: 720px; top: 300px; ">14</button>
         <button type="button" title="E15" id="seat" style=" left: 750px; top: 300px; ">15</button>
 
 
       <button type="button" title="F1" id="seat" style=" left: 270px; top: 325px; ">1</button>
         <button type="button" title="F2" id="seat" style=" left: 300px; top: 325px; ">2</button>
         <button type="button" title="F3" id="seat" style=" left: 330px; top: 325px; ">3</button>
         
         <button type="button" title="F4"  id="seat" style=" left: 425px; top: 325px; ">4</button>
         <button type="button" title="F5"  id="seat" style=" left: 420px; top: 325px; ">5</button>
         <button type="button" title="F6"  id="seat" style=" left: 450px; top: 325px; ">6</button>
         <button type="button" title="F7"  id="seat" style=" left: 480px; top: 325px; ">7</button>
         <button type="button" title="F8"  id="seat" style=" left: 510px; top: 325px; ">8</button>
         <button type="button" title="F9"  id="seat" style=" left: 540px; top: 325px; ">9</button>
         <button type="button" title="F10" id="seat" style=" left: 570px; top: 325px; ">10</button>
         <button type="button" title="F11" id="seat" style=" left: 600px; top: 325px; ">11</button>
         <button type="button" title="F12" id="seat" style=" left: 630px; top: 325px; ">12</button>
         
         <button type="button" title="F13" id="seat" style=" left: 690px; top: 325px; ">13</button>
         <button type="button" title="F14" id="seat" style=" left: 720px; top: 325px; ">14</button>
         <button type="button" title="F15" id="seat" style=" left: 750px; top: 325px; ">15</button>
 
 
       <button type="button" title="G1" id="seat" style=" left: 270px; top: 350px; ">1</button>
         <button type="button" title="G2" id="seat" style=" left: 300px; top: 350px; ">2</button>
         <button type="button" title="G3" id="seat" style=" left: 330px; top: 350px; ">3</button>
         
         <button type="button" title="G4"  id="seat" style=" left: 425px; top: 350px; ">4</button>
         <button type="button" title="G5"  id="seat" style=" left: 420px; top: 350px; ">5</button>
         <button type="button" title="G6"  id="seat" style=" left: 450px; top: 350px; ">6</button>
         <button type="button" title="G7"  id="seat" style=" left: 480px; top: 350px; ">7</button>
         <button type="button" title="G8"  id="seat" style=" left: 510px; top: 350px; ">8</button>
         <button type="button" title="G9"  id="seat" style=" left: 540px; top: 350px; ">9</button>
         <button type="button" title="G10" id="seat" style=" left: 570px; top: 350px; ">10</button>
         <button type="button" title="G11" id="seat" style=" left: 600px; top: 350px; ">11</button>
         <button type="button" title="G12" id="seat" style=" left: 630px; top: 350px; ">12</button>
         
         <button type="button" title="G13" id="seat" style=" left: 690px; top: 350px; ">13</button>
         <button type="button" title="G14" id="seat" style=" left: 720px; top: 350px; ">14</button>
         <button type="button" title="G15" id="seat" style=" left: 750px; top: 350px; ">15</button>
 
 
       <button type="button" title="H1" id="seat" style=" left: 270px; top: 375px; ">1</button>
         <button type="button" title="H2" id="seat" style=" left: 300px; top: 375px; ">2</button>
         <button type="button" title="H3" id="seat" style=" left: 330px; top: 375px; ">3</button>
         
         <button type="button" title="H4"  id="seat" style=" left: 425px; top: 375px; ">4</button>
         <button type="button" title="H5"  id="seat" style=" left: 420px; top: 375px; ">5</button>
         <button type="button" title="H6"  id="seat" style=" left: 450px; top: 375px; ">6</button>
         <button type="button" title="H7"  id="seat" style=" left: 480px; top: 375px; ">7</button>
         <button type="button" title="H8"  id="seat" style=" left: 510px; top: 375px; ">8</button>
         <button type="button" title="H9"  id="seat" style=" left: 540px; top: 375px; ">9</button>
         <button type="button" title="H10" id="seat" style=" left: 570px; top: 375px; ">10</button>
         <button type="button" title="H11" id="seat" style=" left: 600px; top: 375px; ">11</button>
         <button type="button" title="H12" id="seat" style=" left: 630px; top: 375px; ">12</button>
         
         <button type="button" title="H13" id="seat" style=" left: 690px; top: 375px; ">13</button>
         <button type="button" title="H14" id="seat" style=" left: 720px; top: 375px; ">14</button>
         <button type="button" title="H15" id="seat" style=" left: 750px; top: 375px; ">15</button>


 
       <button type="button" title="I1" id="seat" style=" left: 270px; top: 400px; ">1</button>
         <button type="button" title="I2" id="seat" style=" left: 300px; top: 400px; ">2</button>
         <button type="button" title="I3" id="seat" style=" left: 330px; top: 400px; ">3</button>
         
         <button type="button" title="I4"  id="seat" style=" left: 425px; top: 400px; ">4</button>
         <button type="button" title="I5"  id="seat" style=" left: 420px; top: 400px; ">5</button>
         <button type="button" title="I6"  id="seat" style=" left: 450px; top: 400px; ">6</button>
         <button type="button" title="I7"  id="seat" style=" left: 480px; top: 400px; ">7</button>
         <button type="button" title="I8"  id="seat" style=" left: 510px; top: 400px; ">8</button>
         <button type="button" title="I9"  id="seat" style=" left: 540px; top: 400px; ">9</button>
         <button type="button" title="I10" id="seat" style=" left: 570px; top: 400px; ">10</button>
         <button type="button" title="I11" id="seat" style=" left: 600px; top: 400px; ">11</button>
         <button type="button" title="I12" id="seat" style=" left: 630px; top: 400px; ">12</button>
         
         <button type="button" title="I13" id="seat" style=" left: 690px; top: 400px; ">13</button>
         <button type="button" title="I14" id="seat" style=" left: 720px; top: 400px; ">14</button>
         <button type="button" title="I15" id="seat" style=" left: 750px; top: 400px; ">15</button>


 
       <button type="button" title="J1" id="seat" style=" left: 270px; top: 425px; ">1</button>
         <button type="button" title="J2" id="seat" style=" left: 300px; top: 425px; ">2</button>
         <button type="button" title="J3" id="seat" style=" left: 330px; top: 425px; ">3</button>
         
         <button type="button" title="J4"  id="seat" style=" left: 425px; top: 425px; ">4</button>
         <button type="button" title="J5"  id="seat" style=" left: 420px; top: 425px; ">5</button>
         <button type="button" title="J6"  id="seat" style=" left: 450px; top: 425px; ">6</button>
         <button type="button" title="J7"  id="seat" style=" left: 480px; top: 425px; ">7</button>
         <button type="button" title="J8"  id="seat" style=" left: 510px; top: 425px; ">8</button>
         <button type="button" title="J9"  id="seat" style=" left: 540px; top: 425px; ">9</button>
         <button type="button" title="J10" id="seat" style=" left: 570px; top: 425px; ">10</button>
         <button type="button" title="J11" id="seat" style=" left: 600px; top: 425px; ">11</button>
         <button type="button" title="J12" id="seat" style=" left: 630px; top: 425px; ">12</button>
         
         <button type="button" title="J13" id="seat" style=" left: 690px; top: 425px; ">13</button>
         <button type="button" title="J14" id="seat" style=" left: 720px; top: 425px; ">14</button>
         <button type="button" title="J15" id="seat" style=" left: 750px; top: 425px; ">15</button>
 
 
      </div> <!-- 좌석 button-->
      </form>
      <input type="button" value="예약" id="sub" style="position: absolute; left:1050px; top: 580px; width: 300px; height: 50px;   background-color: #40ba37; color: #ffffff; " >
    
    <div class="result">
        <p>${map.movie_name}</p>
        <p>${map.movie_loc}점</p>
        <p>${map.movie_screen}</p>
        <p>${map.movie_regdate}</p>
        <p>${map.movie_tims}</p>
        <p id="seatArray"></p>
   </div>
   
   
</body>
</html>