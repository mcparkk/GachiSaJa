<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
try {
	DBManager db = DBManager.getInstance();
	Connection con = db.open();
	
	
	// 3. Query ���� �غ�
	String sql = "select empno, ename, job, hiredate from emp";
	PreparedStatement stmt = con.prepareStatement(sql);
	
	// 4. Query ����
	ResultSet rs = stmt.executeQuery();
%>
	<table border="1">
		<tr><td>��ȣ</td><td>�̸�</td><td>����</td><td>����</td></tr>
<%	
	while(rs.next()) {
		out.print("<tr>");
		int empno = rs.getInt("empno");
		String ename = rs.getString("ename");
		String job = rs.getString("job");
		String hiredate = rs.getString("hiredate");
		out.println("<td>" + empno + "</td>");
		out.println("<td>" + ename + "</td>");
		out.println("<td>" + job + "</td>");
		out.println("<td>" + hiredate + "</td>");
		out.println("</tr>");
	}
%>
	</table>
<%
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>