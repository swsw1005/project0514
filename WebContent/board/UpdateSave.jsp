<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.webjjang.db.board.*"%>

<%
	System.out.println("------ UpdateSave.jsp --- ");
request.setCharacterEncoding("UTF-8"); // 한글 처리

//  UpdateSave 작업
// 1. request 데이터 받기
int no = Integer.parseInt(request.getParameter("no").trim());
String title = request.getParameter("title");
String content = request.getParameter("content");

// 2. DTO CREATE + SETTER
BoardDTO dto = new BoardDTO();
dto.setNo(no);
dto.setTitle(title);
dto.setContent(content);

// 3. DAO work
BoardDAO dao = new BoardDAO();
int result = dao.update(dto);

// 글보기로 자동 이동시킨다.
if (result == 1) {
	out.print("<script> alert('글 수정 성공!!!'); </script>");
	response.sendRedirect("View.jsp?no=" + no);
} else {
	out.print("<script> alert('글 수정 실패!!!'); </script>");
	response.sendRedirect("View.jsp?no=" + no);
}
%>
