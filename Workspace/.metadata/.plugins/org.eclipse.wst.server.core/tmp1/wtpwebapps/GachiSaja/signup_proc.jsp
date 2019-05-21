<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBase.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String nickName = request.getParameter("nickName");
	
	try {
		DBManager DataBase = DBManager.getInstance();
		Connection con = DataBase.open();
		String sql = "insert into gachisajamember values (?, ?, ?, ?, ?, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		stmt.setString(2, pw);
		stmt.setString(3, name);
		stmt.setString(4, phone);
		stmt.setString(5, email);
		stmt.setString(6, nickName);
		stmt.executeUpdate();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}	
%>



