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
<script type="text/javascript">
</script>
<script>
//로그인 제약사항
$(function(){
 $("button#loginCk").click(function(){
	if($("input#idCk").val()==""){
		alert("아이디 입력하세요");
		$("input#idCk").focus();
		return false;
	}
	if($("input#passwordCk").val()==""){
		alert("비밃번호 입력하세요");
		$("input#passwordCk").focus();
		return false;
	}
	if($("input#id").val().length>0 && $("input#password").val().length>0){
		document.location.href='loginCheck.do?id='+$("input#id").val()+'&password='+$("input#password").val();
	}
	
});
 $("button#account").click(function(){
	
	document.location.href='/orm/signup.jsp';
	//window.location.href='/orm/jsp/signup.jsp'
});
});
</script>
<title>로그인</title>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<!-- <form class="login100-form validate-form flex-sb flex-w" action="loginCheck.do" method="post"> -->
					<span class="login100-form-title p-b-32">
						Account Login
					</span>
					<span class="txt1 p-b-11">
						Username
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<input class="input100" type="text" name="id" id="id" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Password
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="password" id="password" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="" class="txt3">
								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="loginCk" name="loginCk">
							Login
						</button>
						<button class="login100-form-btn" id="account" name="account">
							Account Login
						</button>
					</div>

				<!-- </form> -->
			</div>
		</div>
	</div>
</body>
</html>