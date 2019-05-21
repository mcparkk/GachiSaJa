<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
		
		
		// 3. Query 실행 준비
		String sql = "select id from member where id=? and pw=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		stmt.setString(2, pw);
		
		ResultSet rs = stmt.executeQuery();
		boolean isOk = false;
		if(rs.next()){
			isOk = true;
		}
		if(isOk){
			out.println("로그인되었습니다.");
			session.setAttribute("id", id);
		}else{
			out.println("다시 로그인해주세요.");
		}
		

		
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>	