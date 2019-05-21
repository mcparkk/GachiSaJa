<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");		// 한글 에러 공식
	String content = request.getParameter("content");
	content = content.replace("\n", "<br>");
%>

<%=content%>
<textarea><%=content%></textarea>