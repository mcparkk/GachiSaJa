<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
 String[][] tableData = {
 {"A", "10", "20", "30"},
 {"B", "20", "30", "40"},
 {"C", "30", "40", "50"}
 };
%>
 <table border="1">
 <tr>
 <th>����</th><th>����</th><th>����</th><th>����</th>
 </tr>
<%
	for(int i = 0; i < tableData[i].length; i++){
		if(i % 2 == 0) {
 			out.println("<tr style='background:gray;'>");
 		} else {
	 		out.println("<tr>");
 		}
		for(int j = 0; j<tableData[j].length; j++){
			out.print("<td>");
			out.print(tableData[i][j]);
			out.print("<\td>");
		}
		out.print("<\tr>");
	}
%>
 </table>