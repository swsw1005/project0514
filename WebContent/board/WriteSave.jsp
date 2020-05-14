<%@page import="com.webjjang.db.board.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	System.out.println("------ WriteSave.jsp --- ");
request.setCharacterEncoding("UTF-8"); // 한글 처리

//  WriteSave 작업
// 1. request 데이터 받기
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");

// 2. DTO CREATE + SETTER
BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setWriter(writer);

// 3. DAO work
BoardDAO dao = new BoardDAO();
int result = dao.insert(dto);
//4. 리스트로 이동
if (result == 1) {
	out.print("<script> alert('입력 성공!!!'); </script>");
	response.sendRedirect("List.jsp");
} else {
	out.print("<script> alert('입력 실패!!!'); </script>");
	response.sendRedirect("List.jsp");
}



%>
