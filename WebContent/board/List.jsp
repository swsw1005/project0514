<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page import="com.webjjang.db.board.*"%>
<%--  태그를 이용해서 제어문 처리하도록 하는 설정  --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
System.out.println("------ List.jsp --- ");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>List.jsp</title>
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
 .dataRow:hover{
        cursor: pointer;
		background : #eee;
    }
</style>
<script>
	$(function() {
		console.log("111");

		$(".dataRow").click(function() {
			// var no =;
			console.log(this);
			var no = this.children[0].innerText;
			console.log(no);
			location.href = "View.jsp?no=" + no;
		});
	});
</script>
</head>
<body>
	<%-- request객체에 담기 --%>
	<%
		BoardDAO dao = new BoardDAO();
	request.setAttribute("list", dao.getList());
	%>
<div class="container">
  <h2>List.jsp</h2>

	<div class="table">
		<legend>board list</legend>
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조횟수</th>
				</tr>
			</thead>
			<tbody>
				<!-- 반복의 시작 -->
				<c:forEach items="${ list }" var="dto">
					<tr class="dataRow">
						<td class="no">${dto.no }</td>
						<td>${dto.title }</td>
						<td>${dto.writer }</td>
						<td>${dto.writedate }</td>
						<td>${dto.hit }</td>
					</tr>
				</c:forEach>
				<!-- 반복의 끝 -->

				<!--  -->
				<br>
				<a href="WriteForm.jsp" class="btn btn-default">새 글 쓰기</a>

			</tbody>
		</table>
	</div>
	</div>
	</div>







</body>
</html>