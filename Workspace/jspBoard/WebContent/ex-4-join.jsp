<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
 	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");

	try {
	DBManager db = DBManager.getInstance();
	Connection con = db.open();
	
	
	// 3. Query 실행 준비
	String sql = "insert into person_info values (?, ?, ?, ?, ?)";
	PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		stmt.setString(2, pw);
		stmt.setString(3, name);
		stmt.setString(4, phone);
		stmt.setString(5, email);
		stmt.executeUpdate();
%>
		
	<p><%="가입되었습니다."%></p>

	

<% 
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
/*	
 int result = pDao.insertPersonInfo(pDto);

 if(result > 0) {
 out.print("{\"result\":\"success\"}");
 } else {
 out.print("{\"result\":\"fail\"}");
 }*/
%>
