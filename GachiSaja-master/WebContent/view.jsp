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
		Connection con = DataBase.open();                 //  asc
		
		String sql2 = "update gachisajapost set hit=hit+1 where num = ?";
		PreparedStatement stmt2 = con.prepareStatement(sql2);
		stmt2.setString(1, id);		
		stmt2.executeUpdate();
		
		String sql = "select * from gachisajapost where num = ?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		
		ResultSet rs = stmt.executeQuery();
		if(rs.next()) {
			String num = rs.getString("num");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String hit = rs.getString("hit");
			String id2 = rs.getString("id");
%>
		<h1><%=title%> / <%=num%></h1>
		<p><%=content%></p>
		<p><%=hit%></p>
		<p><%=id2%></p>
		<button type="button" onclick="location='update.jsp?id=<%=id%>'">수정</button>
		<button type="button" onclick="del()">삭제</button>
<%		
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}	
%>
<script>
	function del() {
		var isOk = confirm("삭제 할래?");
		if(isOk) { // 삭제
			location = 'delete_proc.jsp?id=<%=id%>';
		}
	}
</script>