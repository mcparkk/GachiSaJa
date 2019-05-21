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
		String sql = "select id from member where id=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		
		
		ResultSet rs = stmt.executeQuery();
		boolean isOk = false;
		if(rs.next()){
			isOk = true;
		}
		if(isOk){
			out.println("이미 사용중인 아이디입니다.");
		}else{
			out.println("사용 가능합니다.");
		}
		

	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>	