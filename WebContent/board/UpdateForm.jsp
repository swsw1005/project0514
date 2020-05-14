<%@page import="com.webjjang.db.board.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");
System.out.println("------ UpdateForm.jsp --- ");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>UpdateForm.jsp</title>
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
	<%
		String no_ = request.getParameter("no");
	int no = Integer.parseInt(no_.trim());

	BoardDAO dao = new BoardDAO();
	BoardDTO dto = dao.getDTO(no);

	String title = dto.getTitle();
	String content = dto.getContent();
	String writer = dto.getWriter();
	%>
	<div class="container">
		<h2>UpdateForm</h2>
		<form action=" UpdateSave.jsp " method="post">
			<!-- 글번호 readOnly -->
			<div class="form-group">
				<label for="no">글번호</label>
				<!-- -->
				<input value="<%=no%>" type="text" class="form-control" id="no"
					name="no" readonly />
			</div>

			<!-- 제목입력 -->
			<div class="form-group">
				<label for="title">제목</label>
				<!-- -->
				<input value="<%=title%>" type="text" class="form-control"
					id="title" name="title" required="required" />
			</div>
			<!-- 내용입력 -->
			<div class="form-group">
				<label for="content">내용</label>
				<!-- -->
				<textarea class="form-control" rows="5" id="content" name="content"
					required="required" style="resize: none;"> <%=content%> </textarea>
			</div>
			<!-- 작성자 readOnly -->
			<div class="form-group">
				<label for="writer">작성자</label>
				<!-- -->
				<input value="<%=writer%>" type="text" class="form-control"
					id="writer" name="writer" required="required" readonly>
			</div>
			<!-- 작성일 readOnly -->
			<div class="form-group">
				<label for="writedate">작성일</label>
				<!-- -->
				<input value="<%=dto.getWritedate()%>" type="text"
					class="form-control" id="writer" name="writer" required="required"
					readonly>


			</div>

			<input type="hidden" name="no" value="<%=no%>" />


			<div class="btn-group">
				<input type="submit" class="btn btn-default" value="수정" />
				<!-- -->
				<input type="reset" class="btn btn-default" value="내용 지우기" />
				<!-- -->
				<a href="List.jsp" class="btn btn-default cancelBtn">목록보기</a>
				<!-- -->
				<a href="View.jsp?no=<%=no%>" class="btn btn-default cancelBtn">취소</a>


			</div>
		</form>
	</div>



</body>
</html>