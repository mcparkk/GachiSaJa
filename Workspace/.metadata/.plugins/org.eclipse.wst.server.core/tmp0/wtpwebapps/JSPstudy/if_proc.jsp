<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String color = request.getParameter("color");
	out.print(color);  
	//if(color.equals("blue")){
		//파란색 배경 변경
		
%>
 
	<style>
		body { 
			backgrond: <%=color%>;
		}
	</style>

	
		 
	

