<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>고객센터</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='infoForm']");
			
			// 수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/orm/updateView.do");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			
			// 삭제
			$(".delete_btn").on("click", function(){
				
				var deleteYN = confirm("삭제하시겠습니까?");
				if(deleteYN == true){
					
				formObj.attr("action", "/orm/delete.do");
				formObj.attr("method", "post");
				formObj.submit();
					
				}
			});
			
			
			// 취소
			$(".list_btn").on("click", function(){
				formObj.attr("action", "/orm/boardList.do");
				formObj.attr("method", "post");
				formObj.submit();
				location.href = "/orm/boardList.do";
			})
		})
		
		$(document).ready(function() {
      $('.wrap').on( 'keyup', 'textarea', function (e){
        $(this).css('height', 'auto' );
        $(this).height( this.scrollHeight );
      });
      $('.wrap').find( 'textarea' ).keyup();
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

body {
	  font-family:'Malgun Gothic';
	}
	
.wrap {
      width: 500px;
    }
    .wrap textarea {
      width: 100%;
      resize: none;
      overflow-y: hidden; /* prevents scroll bar flash */
      padding: 1.1em; /* prevents text jump on Enter keypress */
      padding-bottom: 0.2em;
      line-height: 1.6;
    }	
</style>
	<body>
		<div id="root" class="container">
			<header>
				<h2><a href="/orm/boardList.do">Q&A 게시판</a></h2>
			</header>
			<hr />
			 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			 <span class="navbar-group" style="padding-left: 730px; padding-right: 0;">
 			<ul class="navbar-nav">
				    <li class="nav-item active">
				      <button type="submit" class="update_btn" style="border-left-width: 30px; border-right-width: 30px; background-color: #28a745; color:white;">수정</button>
				    </li>
				    <li class="nav-item active">
				      <button type="submit" class="delete_btn" style="border-left-width: 30px; border-right-width: 30px; background-color: #28a745; color:white;">삭제</button>
				    </li>
				    <li class="nav-item active">
				      <button type="submit" class="list_btn" style="border-left-width: 30px; border-right-width: 30px; background-color: #28a745; color:white;">목록</button>
				    </li>
				  </ul>
				</span>  
				</nav>
			<hr />
			
			<section id="container">
				<form role="form" name="infoForm" method="post">
					<table class="table">
						<tbody>
							<tr>
								<td>
									<label for="bno">글번호</label><input class="form-control" readonly="readonly" type="text" id="bno" name="bno" value="${info.bno}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="hit">조회수</label><input class="form-control" readonly="readonly" type="text" id="hit" name="hit" value="${info.hit}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="title">제목</label><input class="form-control" readonly="readonly" type="text" id="title" name="title" value="${info.title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="writer">작성자</label><input class="form-control" readonly="readonly" type="text" id="writer" name="writer" value="${info.writer}" />
								</td>
							</tr>
							<tr class="wrap">
								<td>
									<label for="contents">내용</label>
									<textarea class="form-control" readonly="readonly" id="contents" name="contents"><c:out value="${info.contents}"></c:out></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label class="form-control" for="regdate">작성일: ${info.regdate}</label>					
								</td>
							</tr>		
						</tbody>			
					</table>
					
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>