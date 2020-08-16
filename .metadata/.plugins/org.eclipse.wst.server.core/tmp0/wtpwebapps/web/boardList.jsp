<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>고객센터</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
</head>
  <script>
  $(function () {
	  
  if("${id}"!=null && "${id}".length>0){  
	  $("a#logOut").show();
      $("a#sign").hide();
  }else{
	  $("a#logOut").hide();
      $("a#sign").show();
  }
  $("#searchTable").hide();
  if($("#adminCheck").val()=='admin'){
	  $("#write").show();
  }
  else{
	  $("#write").hide();
  }
  $(".NewWrite_btn").click(function () {
	 //alert('test');
	  location.href = "/orm/writeView.jsp";				
   });
 
  $("#search").click(function(){
	  if($("#data").val()=='empty'||$("#data").val().length==0){
		  alert("검색할 내용을 입력해주세요.");
	  }else{
		  var data = $("#data").val();
		  $.ajax({
				url:'/orm/searchBoard.do',
				type:'POST',
				dataType:'json',
				data:'data='+data,
				success:function(data){
					$("#searchTable").show();
					$("table#allList").hide();
      				var list="";
      				
					$(data).each(function(index,dom){
						list+="<tr>"
						list+="<td>"+dom.bno+"</td>";
						list+="<td><a href='/orm/boardInfo.do?bno="+dom.bno+"'>"+dom.title+"</a></td>";
						list+="<td>"+dom.writer+"</td>";
						list+="<td>"+dom.regdate+"</td>";
						list+="<td>"+dom.hit+"</td>";
						list+="</tr>"
					});
					$("#searchList").append(list);
				},error:function(){
					alert('error');
				}
		 })
	  }
	
  });
});
  
  
 </script>
 <style>

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

</style>

<body>
<input type="hidden" id="adminCheck" value="${id}">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
<span class="navbar-group">
<ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="/orm/index.jsp" style="padding-right: 50px; padding-left: 50px;">HOME</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="/orm/bookingList.do" style="padding-right: 50px; padding-left: 50px;">예매</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#" style="padding-right: 50px; padding-left: 50px;">극장</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#" style="padding-right: 50px; padding-left: 50px;">이벤트</a>
    </li>
   
    <li class="nav-item active">
      <a class="nav-link" href="signin.do" id="sign"  style="padding-right: 50px; padding-left: 50px;">로그인</a>
      <a class="nav-link" href="logOut.do" id="logOut" style="padding-right: 50px; padding-left: 50px;">로그아웃</a>
    </li>
  </ul>
</span>  
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="text" placeholder="Search" id="data">
    <button class="btn btn-success" type="button" id="search">Search</buttfon>
  </form>
</nav>


<%-- ${boardList } --%>
<div class="container">
  <br>
  <h2><a href="boardList.do">자주 묻는 질문</a></h2>
  <p>게시판 입니다</p>            
 <input type="button" class="NewWrite_btn" value="글쓰기" id="write">
 <form role="form" method="post" action="boardList.do">
  <table class="table table-hover" id="allList">
      <tr>
        <th>글번호</th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th>
      </tr>
	 
      <c:forEach var="i" items="${boardList}">
      <tr>
      	<td><c:out value="${i.bno }"/></td>
      	<td>
      	<a href="/orm/boardInfo.do?bno=${i.bno}"><c:out value="${i.title }"/></a>    	
      	</td>
      	<td><c:out value="${i.writer }"/></td>
      	<td>${i.regdate}</td>
      	<td><c:out value="${i.hit }"/></td>
      </tr>
      </c:forEach>
  </table>

 <div id="ajaxSearch">
  <table class="table table-hover" id="searchTable">
  
      <tr>
        <th>글번호</th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th>
      </tr>
      <tbody id="searchList">
     
      </tbody>
  </table>
 </div> 
  
  <!-- paging section -->
  			<div class="container">
            <!-- <nav class="pagination" style="display: inline-block; float: none;"> -->
               <ul class="pagination justify-content-center">
                  <c:if test="${pageBean != null }">
                     <c:choose>
                        <c:when test="${pageBean.currentBlock > 1}">
                           <li class="page-item"><a class="page-link" href="boardList.do?page=${pageBean.startPage-1 }">이전</a></li>
                        </c:when>
                        <c:otherwise>
                           <li class="page-item"><a class="page-link" href="#">이전</a></li>
                        </c:otherwise>
                     </c:choose>


                     <c:choose>
                        <c:when test="${pageBean.currentPage > 1}">
                           <li class="page-item"><a class="page-link" href="boardList.do?page=${pageBean.currentPage-1 }">Previous</a></li>
                        </c:when>
                     </c:choose>

                     <c:forEach var="i" begin="${pageBean.startPage }" end="${pageBean.endPage }" varStatus="cnt">
                        <c:choose>
                           <c:when test="${pageBean.currentPage == i}">
                              <li class="page-item"><a class="page-link" href="#"><font color="red" size="3">${i}</font></a></li>
                           </c:when>
                           <c:otherwise>
                              <li class="page-item"><a class="page-link" href="boardList.do?page=${i}">${i}</a></li>
                           </c:otherwise>
                        </c:choose>
                     </c:forEach>
                        <c:choose>
                           <c:when
                              test="${pageBean.currentPage < pageBean.totalPage }">
                              <li class="page-item"><a class="page-link" href="boardList.do?page=${pageBean.currentPage + 1}">Next</a></li>
                           </c:when>
                           <c:when test="${pageBean.totalPage > pageBean.endPage }">
                              <li class="page-item"><a class="page-link" href="boardList.do?page=${pageBean.endPage + 1}">다음</a></li>
                           </c:when>
                           <c:otherwise>
                              <li class="page-item"><a class="page-link" href="#">다음</a></li>
                           </c:otherwise>
                        </c:choose>
                  </c:if>
               </ul>
            <!-- </nav> -->
            </div>
</form>
</div>
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