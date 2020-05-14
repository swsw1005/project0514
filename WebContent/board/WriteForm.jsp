<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");
System.out.println("------ WriteForm.jsp --- ");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>WriteForm.jsp</title>
<!-- bootstrap 3.4.1 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- jquery 3.4.1 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
* {
	margin: 0px;
	padding: 0px;
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<div class="container">
		<h2>WriteForm</h2>
		<form action="WriteSave.jsp" method="post">
			<!-- 제목입력 -->
			<div class="form-group">
				<label for="title">제목</label> <input type="text"
					class="form-control" id="title" name="title" required="required" />
			</div>
			<!-- 내용입력 -->
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" id="content" name="content"
					required="required" style="resize: none;"></textarea>
			</div>
			<!-- 작성자 입력 -->
			<div class="form-group">
				<label for="writer">작성자</label> <input type="text"
					class="form-control" id="writer" name="writer" required="required">
			</div>

			<div class="btn-group">
				<input type="submit" class="btn btn-default" value="작성" /> <input
					type="reset" class="btn btn-default" value="새로입력" />
				<!--  -->
				<a href="List.jsp" class="btn btn-default cancelBtn">목록보기</a>

			</div>
		</form>
	</div>



</body>
</html>