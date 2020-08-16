<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="/orm/images/icons/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="/orm/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/orm/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/orm/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="/orm/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="/orm/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="/orm/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="/orm/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="/orm/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="/orm/css/util.css">
<link rel="stylesheet" type="text/css" href="/orm/css/main.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<title>Insert title here</title>
</head>
<script>
$(function(){
	//영화 업로드 제약사항
	$("#submit").click(function(){
		if($("input#movie_title").val()==""){
			alert("영화제목을 입력하세요");
			$("input#movie_title").focus();
			return false;
		}

		if($("input#opendate").val()==""){
			alert("영화개봉일을 입력하세요");
			$("input#opendate").focus();
			return false;
		}
		if($("input#runningtime").val()==""){
			alert("상영시간을 입력하세요");
			$("input#runningtime").focus();
			return ;
		}
		if($("input#trailer").val()==""){
			alert("트레일러를 입력하세요");
			$("input#trailer").focus();
			return false;
		}
		if($("input#story").val()==""){
			alert("줄거리 입력하세요");
			$("input#story").focus();
			return false;
		}
		if($("input#director").val()==""){
			alert("감독을 입력하세요");
			$("input#director").focus();
			return ;
		}
		if($("input#actor").val()==""){
			alert("츌연자를 입력하세요");
			$("input#actor").focus();
			return ;
		}
		$("form").submit();
	}); 

});
		
</script>
<body>
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
            <!-- <form class="login100-form validate-form flex-sb flex-w" action="/orm/uploadMovie.do" method="post"> -->
            <form id="uploadMovie" name="uploadMovie" method="post" action="/orm/uploadMovie.do">
               <span class="login100-form-title p-b-32">
                  UPLOAD MOVIE
               </span>
<br>
               <span class="txt1 p-b-11">
                  	영화제목
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="movie_title" id="movie_title">
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                 	 장르
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="genre" id="genre" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                 	 개봉일
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="opendate" id="opendate"  placeholder="2019.04.24">
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                	  상영시간
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="runningtime" id="runningtime" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  	트레일러
               </span>
               <div class="wrap-input100 validate-input m-b-36"  data-validate = "Username is required">
                  <input class="input100" type="text" name="trailer" id="trailer" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                 	 스토리
               </span>
                <div class="wrap-input100 validate-input m-b-36"  data-validate = "Username is required">
                  <input class="input100" type="text" name="story" id="story" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  	감독
               </span>
                <div class="wrap-input100 validate-input m-b-36"  data-validate = "Username is required">
                  <input class="input100" type="text" name="director" id="director" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  	출연
               </span>
               <div class="wrap-input100 validate-input m-b-36"  data-validate = "Username is required">
                  <input class="input100" type="text" name="actor" id="actor" >
                  <span class="focus-input100"></span>
               </div>
               

               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" id="submit" name="submit">
                     	등록
                  </button>
               </div>

            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
</body>
