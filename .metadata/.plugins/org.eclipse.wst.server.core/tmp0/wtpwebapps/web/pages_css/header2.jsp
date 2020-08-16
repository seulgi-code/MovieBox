<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>


* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-size: 28px;
	font-family: Arial, Helvetica, sans-serif;
}

.header {
	background-color: #f1f1f1;
    padding-top: 50px;
    padding-bottom: 8px;
	text-align: center;
}
 /* header - 맨위  */
 .header  div {
 	text-align: right;
 	margin-bottom: 0;
 
 }
 .header  div a{
 	font-size: 15px;
    padding-left: 30px;
 }
 /* header - 맨위  */

#navbar {
	overflow: hidden;
	background-color: rgba(0, 0, 0, .3);
}

#navbar a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 85px;
	text-decoration: none;
	font-size: 17px;
}

#navbar a:hover {
	background-color: #ddd;
	color: black;
}

#navbar a.active {
	background-color: #4CAF50;
	color: white;
}

.content {
	padding: 16px;
}

.sticky {
	position: fixed;
	top: 0;
	width: 100%;
}

.sticky+.content {
	padding-top: 60px;
}

#navbar .search-container {
	float: right;
}

#navbar input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
}

#navbar .search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	border: none;
	cursor: pointer;
}

#navbar .search-container button:hover {
	background: #ccc;
}

@media screen and (max-width: 600px) {
	#navbar .search-container {
		float: none;
	}
	#navbar a, .topnav input[type=text], #navbar .search-container button {
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	#navbar input[type=text] {
		border: 1px solid #ccc;
	}
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
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
 		});           
           
  
    </script>

</head>
<body>
	<header >
		<div class="header">
			<div>
				<a href="signup.do" id="signup">회원가입</a>
				<!--로그인시 hidden 처리되게  -->
				<a href="signin.do" id="sign">로그인</a>
				<!--로그인시 '로그아웃'으로 바뀌게 하기  -->
				<a href="logOut.do" id="logOut">로그아웃</a>
				<!--로그인시 '로그아웃'으로 바뀌게 하기  -->
				<a href="boardList.do">고객센터</a>
			</div>
		</div>
		<div >
			<div>
				<div id="navbar">
					<a id="navbar-contents" class="active" href="/orm/index2.jsp">Home</a>
					<div class="dropdown">
						<button class="dropbtn">
							영화 <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<a href="#">전체영화</a> <a href="#">무비파인더</a>
						</div>
					</div>
					<a id="navbar-contents" href="javascript:void(0)">예매</a> <a
						id="navbar-contents" href="javascript:void(0)">극장</a>

					<div class="search-container">
						<form action="/action_page.php">
							<input type="text" placeholder="Search.." name="search">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>
	<script>
		window.onscroll = function() {
			myFunction()
		};

		var navbar = document.getElementById("navbar");
		var sticky = navbar.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				navbar.classList.add("sticky")
			} else {
				navbar.classList.remove("sticky");
			}
		}
	</script>

</body>

</html>
