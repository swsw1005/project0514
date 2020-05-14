<%@page import="com.webjjang.db.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	System.out.println("------ Delete.jsp --- ");
request.setCharacterEncoding("UTF-8"); // 한글 처리

//  Delete 작업
// 1. request 데이터 받기
int no = Integer.parseInt(request.getParameter("no").trim());

// 3. DAO work
BoardDAO dao = new BoardDAO();
int result = dao.delete(no);

// 글보기로 자동 이동시킨다.
if (result == 1) {
	response.sendRedirect("List.jsp");
} else {
	out.print("<script> alert('글 삭제 실패!!!'); </script>");
	response.sendRedirect("View.jsp?no=" + no);
}
%>
