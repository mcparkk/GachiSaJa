<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBase.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = request.getParameter("id");
	
	try {
		DBManager DataBase = DBManager.getInstance();
		Connection con = DataBase.open();
		String sql = "delete from gachisajapost where num=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);	
		
		int result = stmt.executeUpdate(); // 성공이면 1 이상, 실패면 0
		if(result > 0) {
			//        http://localhost/JspBoard/list.jsp
			response.sendRedirect("list.jsp");
		} else {
			out.println("수정실패");
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}	
%>



