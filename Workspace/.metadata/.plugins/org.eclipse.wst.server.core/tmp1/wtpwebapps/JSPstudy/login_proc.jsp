<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String userId=request.getParameter("user_id");
	String userPw=request.getParameter("user_pw");
	
	if(userId.equals("ai") && userPw.equals("1234")){
	 	out.print(userId + "�� �ݰ����ϴ�.");
	 	session.setAttribute("login_id", userId);
	}else{
		out.print("���̵� �Ǵ� ��й�ȣ�� ���� �ʽ��ϴ�.");
	}
%>