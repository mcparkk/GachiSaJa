<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	
	String id = request.getParameter("id");
	
	
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
		
		
		// 3. Query 실행 준비
		String sql = "delete from article where id=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		
		int result = stmt.executeUpdate();	// 성공이면 1이상, 실패면 0 
		if(result>0){
			// 	http:/localhost/jspBoard/list.jsp
			response.sendRedirect("list.jsp");
		}else{
			out.println("수정실패");
		}
		
		
		
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>	