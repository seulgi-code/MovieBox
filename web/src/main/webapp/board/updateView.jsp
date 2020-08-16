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
			
			$(".cancel_btn").on("click", function(){
				//event.preventDefault();
				location.href = "/orm/boardList.do";
			})
		})
	
	</script>
	<style>
	body {
	  font-family:'Malgun Gothic';
	}
	</style>
	<body>
	
		<div id="root" class="container">
			<header>
				<h2><a href="/orm/boardList.do">기본 게시판</a></h2>
			</header>
			<hr />
			 
			<nav style="background: #343a40!important; color:white;">
			 글 수정
			</nav>
			<hr />
			
			<section id="container">
				<form name="updateForm" role="form" method="post" action="/orm/update.do">
					<input type="hidden" name="bno" value="${update.bno}" readonly="readonly"/>
					<table class="table">
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label><input class="form-control" type="text" id="title" name="title" value="${update.title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="writer">작성자</label><input class="form-control" type="text" id="writer" name="writer" value="${update.writer}" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="contents">내용</label><textarea class="form-control" id="contents" name="contents"><c:out value="${update.contents}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label class="form-control" for="regdate">작성일: ${update.regdate} </label>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div style="background: #343a40!important; color:white;">
						<button type="submit" class="update_btn" style="border-left-width: 30px; border-right-width: 30px; background-color: #28a745; color:white;">저장</button>
						<button type="submit" class="cancel_btn" style="border-left-width: 30px; border-right-width: 30px; background-color: #28a745; color:white;">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>