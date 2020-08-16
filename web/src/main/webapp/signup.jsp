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
	//회원가입 제약사항
	$("button#login").click(function(){
		if($("input#id").val()==""){
			alert("아이디 입력하세요");
			$("input#id").focus();
			return false;
		}
		if($("input#name").val()==""){
			alert("이름 입력하세요");
			$("input#name").focus();
			return false;
		}
		if($("input#email").val()==""){
			alert("이메일 입력하세요");
			$("input#email").focus();
			return false;
		}
		if(($("input#password1").val() != $("input#password2").val())){
			alert("비밀번호가 일치하지않습니다");
			$("input#password1").val("");
			$("input#password2").val("");
			$("input#password1").focus();
			return false;
		}
		if(($("input#password2").val().length < 9)){
			alert("형식에 맞춰 비밀번호를 작성해주세요");
			$("input#password1").val("");
			$("input#password2").val("");
			$("input#password1").focus();
			return false;
		}
		$("input#password").val($("input#password2").val());
	});
	
});
</script>
<body>
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
            <form class="login100-form validate-form flex-sb flex-w" action="loginIdCheck.do" method="post">
               <span class="login100-form-title p-b-32">
                  Account Login
               </span>

               <span class="txt1 p-b-11">
                  ID
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="id" id="id" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  Username
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="name" id="name" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  E-Mail
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="email" id="email" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  Birth
               </span>
               <div class="wrap-input100 validate-input m-b-36"  data-validate = "Username is required">
                  <input class="input100" type="text" placeholder="19930410" name="birth" id="birth" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  Tel
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="tel" id="tel" >
                  <span class="focus-input100"></span>
               </div>
               
               <span class="txt1 p-b-11">
                  Password
               </span>
               <div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
                  <span class="btn-show-pass">
                     <i class="fa fa-eye"></i>
                  </span>
                  <input class="input100" type="password" name="password1" placeholder="9글자 이상"  id="password1" >
                  <span class="focus-input100"></span>
               </div>
               <span class="txt1 p-b-11">
                  Password confirm
               </span>
               <div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
                  <span class="btn-show-pass">
                     <i class="fa fa-eye"></i>
                  </span>
                  <input class="input100" type="password" name="password2" id="password2" >
                  <span class="focus-input100"></span>
               </div>
               <input type="hidden" name="password" id="password">
               <div class="flex-sb-m w-full p-b-48">
                  <div class="contact100-form-checkbox">
                     <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                     <label class="label-checkbox100" for="ckb1">
                        Remember me
                     </label>
                  </div>

                  <div>
                     <a href="#" class="txt3">
                        Forgot Password?
                     </a>
                  </div>
               </div>

               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" id="login" name="login">
                     Login
                  </button>
               </div>

            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
</body>
</html>