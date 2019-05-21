<%@page import="DataBase.DBManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = (String) session.getAttribute("id");
	String latitude = request.getParameter("latitude");
	String longtitude = request.getParameter("longtitude");

	try {
		DBManager DataBase = DBManager.getInstance();
		Connection con = DataBase.open();
		String sql = "insert into gachisajapost values (null, ?, ?, 0, ?, ?, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, title);
		stmt.setString(2, content);
		stmt.setString(3, id);
		stmt.setString(4, latitude);
		stmt.setString(5, longtitude);
		int result = stmt.executeUpdate(); // 성공이면 1 이상, 실패면 0
		if (result > 0) {
			out.println("작성완료");
		} else {
			out.println("작성실패");
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>
