<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("login_id"); // ���� ���� ����
	session.invalidate(); // ��ü ���� ����
	response.sendRedirect("login.jsp");
%>