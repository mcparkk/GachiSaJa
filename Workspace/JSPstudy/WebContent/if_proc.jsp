<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String color = request.getParameter("color");
	out.print(color);  
	//if(color.equals("blue")){
		//�Ķ��� ��� ����
		
%>
 
	<style>
		body { 
			backgrond: <%=color%>;
		}
	</style>

	
		 
	

