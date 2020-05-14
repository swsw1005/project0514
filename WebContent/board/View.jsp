<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page import="com.webjjang.db.board.*"%>

<%
	request.setCharacterEncoding("UTF-8");
System.out.println("------ View.jsp --- ");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>View.jsp</title>

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
pre{
margin : 0px;
padding : 0px;
border : none;
background : none;
font-size : 1em;
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<!-- 내용 -->
	<%
		String no_ = request.getParameter("no").trim();
	System.out.println("조회하는 글 : " + no_);

	int no = Integer.parseInt(no_);
	System.out.println("조회하는 글 : " + no);

	BoardDAO dao = new BoardDAO();
	BoardDTO dto = dao.getDTO(no);
	System.out.println(dto.toString());
	%>

	<div class="container">
		<h2>View</h2>

		<table class="table table-bordered">

			<tbody>
			<%-- no --%>
				<tr>
					<td><label for="title">글번호</label></td>
					<td><%=dto.getNo()%></td>
				</tr>
				<%-- title --%>
				<tr>
					<td><label for="title">제목</label></td>
					<td><%=dto.getTitle()%></td>
				</tr>
			<%-- content --%>
				<tr>
					<td><label for="title">본문</label></td>
					<td><pre><%=dto.getContent()%></pre></td>
				</tr>
				<%-- writer --%>
				<tr>
					<td><label for="title">작성자</label></td>
					<td><%=dto.getWriter()%></td>
				</tr>
			<%-- writedate --%>
				<tr>
					<td><label for="title">작성일</label></td>
					<td><%=dto.getWritedate()%></td>
				</tr>
				<%-- 버튼_그룹 --%>
				<tr>
					<td colspan="2">
						<div class="btn-group">

							<!-- 버튼1 -->
							<a href="WriteForm.jsp" class="btn btn-default">새 글 쓰기</a>
							<!-- 버튼2 -->
							<a href="UpdateForm.jsp?no=<%=no%>" class="btn btn-default cancelBtn">수정하기</a>
							<!-- 버튼3 -->
							<a href="List.jsp" class="btn btn-default cancelBtn">목록보기</a>
							<!-- 버튼4 -->
							<a href="Delete.jsp?no=<%=no%>" class="btn btn-default cancelBtn">삭제하기</a>
						
						</div>
					</td>
				</tr>

			</tbody>
		</table>

		<hr>



		<%-- <form>
			<div class="form-group">
				<label for="title">글번호</label>
				<div>
					<%=dto.getNo()%>
				</div>
			</div>
			<div class="form-group">
				<label for="title">제목</label>
				<div>
					<%=dto.getTitle()%>
				</div>
			</div>

			<div class="form-group">
				<label for="title">본문</label>
				<div>
					<%=dto.getContent()%>
				</div>
			</div>

			<div class="form-group">
				<label for="title">작성자</label>
				<div>
					<%=dto.getWriter()%>
				</div>
			</div>

			<div class="form-group">
				<label for="title">작성일</label>
				<div>
					<%=dto.getWritedate()%>
				</div>
			</div>

			<div class="btn-group">

				<a href="WriteForm.jsp" class="btn btn-default">새 글 쓰기</a>

				<!--  -->
				<a href="UpdateForm.jsp?no=<%=no%>"
					class="btn btn-default cancelBtn">수정하기</a>
				<!--  -->
				<a href="List.jsp" class="btn btn-default cancelBtn">목록보기</a>
				<!--  -->
				<a href="Delete.jsp?no=<%=no%>" class="btn btn-default cancelBtn">삭제하기</a>
				<!--  -->
			</div>
		</form> --%>



	</div>



</body>
</html>