<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
<title>새 글 작성</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

   	<script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[name='writeForm']");
		$(".list_btn").on("click", function(){
			if(fn_valiChk()){
				return false;
			}
			formObj.attr("action", "redirect:/boardList.do");
			formObj.attr("method", "post");
			formObj.submit();
			location.href = "redirect:/boardList.do";
		});
	})
	function fn_valiChk(){
		var regForm = $("form[name='writeForm'] .chk").length;
		for(var i = 0; i<regForm; i++){
			if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}
</script>
<style>
body {
	  font-family:'Malgun Gothic';
	}
</style>
	<body>
		<div id="root" class="container">
			<header>
				<h2><a href="/boardList.do">기본 게시판</a></h2>
			</header>
			<hr />
			 
			<nav style="background: #343a40!important; color:white;">
			  새 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" name="writeForm"  method="post" action="/orm/boardWrite.do">
					<table class="table">
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label><input class="form-control" type="text" id="title" name="title" class="chk" title="제목을 입력하세요."/> 
								</td>
							</tr>	
							<tr>
								<td>
									<label for="contents">내용</label><textarea class="form-control" id="contents" name="contents" class="chk" title="내용을 입력하세요."></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input class="form-control" type="text" id="writer" name="writer" title="작성자를 입력하세요."/>
								</td>
							<tr>
								<td>						
									<button type="submit">작성</button>
									<button type="submit" class="list_btn">취소</button>
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