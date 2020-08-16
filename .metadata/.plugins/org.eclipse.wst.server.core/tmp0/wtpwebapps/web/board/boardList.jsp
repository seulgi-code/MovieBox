<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>기본게시판</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  
  <script>
  $(function () {
	$("#searchTable").hide();
  $(".NewWrite_btn").click(function () {
	 //alert('test');
	  location.href = "/orm/board/writeView.jsp";				
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
						list+="<td><a href='/orm/boardHit.do?bno="+dom.bno+"'>"+dom.title+"</a></td>";
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
 
.navbar-group
{
  padding-left: 200px;
  padding-right: 50px;
}

ul.navbar-nav li a.nav-link
}
  padding-right: 30px;
  padding-left: 30px;
}

</style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<span class="navbar-group">
<ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#" style="padding-right: 50px; padding-left: 50px;">링크1</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#" style="padding-right: 50px; padding-left: 50px;">링크2</a>
    </li>
   
    <li class="nav-item">
      <a class="nav-link disabled" href="#" style="padding-right: 50px; padding-left: 50px;">비활성링크</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#" style="padding-right: 50px; padding-left: 50px;">로그인</a>
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
  <h2><a href="boardList.do">기본 게시판</a></h2>
  <p>게시판 입니다</p>            
 <input type="button" class="NewWrite_btn" value="글쓰기">
 <form role="form" method="post" action="boardList.do">
  <table class="table table-hover" id="allList">
      <tr>
        <th>글번호</th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th>
      </tr>
	 
      <c:forEach var="i" items="${boardList}">
      <tr>
      	<td><c:out value="${i.bno }"/></td>
      	<td>
      	<a href="/orm/boardHit.do?bno=${i.bno}"><c:out value="${i.title }"/></a>    	
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
</body>
</html>