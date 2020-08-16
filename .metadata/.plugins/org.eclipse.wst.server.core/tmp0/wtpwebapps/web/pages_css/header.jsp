<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/orm/pages_css/header.css">
</head><body>
<div id="navbar">
  <a id="navbar-contents" class="active" href="javascript:void(0)">Home</a>
  <div class="dropdown">
    <button class="dropbtn">영화
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">전체영화</a>
      <a href="#">무비파인더</a>
    </div>
  </div> 
  <a id="navbar-contents" href="javascript:void(0)">예매</a>
  <a id="navbar-contents" href="javascript:void(0)">극장</a>
  <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<script>
window.onscroll = function() {myFunction()};

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
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
hello<br>
</html>
