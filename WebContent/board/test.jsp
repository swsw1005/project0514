<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.webjjang.db.board.*"%>


<%
	request.setCharacterEncoding("UTF-8");
System.out.println("------ test.jsp --- ");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>test.jsp</title>

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
	<!-- 내용 -->
	<h2>test.jsp</h2>
	<br>
	<%
		int no = 11;
	BoardDTO dto = new BoardDTO();
	dto.setNo(1);
	dto.setTitle("tt");
	dto.setContent("ccc\nsdfsafsd\nsdfasdfasdf\nasdfasdfasf\n\nsadfsd");
	dto.setWriter("www");
	dto.setWritedate("ddd");
	%>



<!-- bootstrap 3.4.1 container -->
 <div class="container">
 <h2> test </h2>

 <style>
 pre{
 margin : 0px;
 padding : 0px;
 border : none;
 background : none;
 font-size : 1em;
  }
  </style>


<table class="table table-bordered">

<tbody>
<%-- no --%>
<tr>
<td><label for="no">글번호</label></td>
<td><%=dto.getNo()%></td>
</tr>
<%-- title --%>
<tr>
<td colspan="2" ><label for="title">제목</label></td>
</tr>
<tr>
<td colspan="2" ><%=dto.getTitle()%></td>
</tr>
<%-- content --%>
<tr>
<td colspan="2" ><label for="content">본문</label></td>
</tr>
<tr>
<td colspan="2" ><pre><%=dto.getContent()%></pre></td>
</tr>
<%-- writer --%>
<tr>
<td><label for="writer">작성자</label></td>
<td><%=dto.getWriter()%></td>
</tr>
<%-- writedate --%>
<tr>
<td><label for="writedate">작성일</label></td>
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







</body>
</html>