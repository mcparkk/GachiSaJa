<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = (String) session.getAttribute("id");
	
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
		
		
		// 3. Query 실행 준비
		String sql = "insert into article values (null, ?, ?, 0, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, title);
		stmt.setString(2, content);
		stmt.setString(3, id);
		int result = stmt.executeUpdate();	// 성공이면 1이상, 실패면 0 
		if(result>0){
			out.println("작성완료");
		}else{
			out.println("작성실패");
		}
		
		
		
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>	