<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
<%
	String pageStr = request.getParameter("page");
	int pageNum	= 0;
	//if (pageStr == null) pageStr = "1";
	try{
	pageNum = Integer.parseInt(pageStr);
	} catch(NumberFormatException e){
		pageNum = 1;
	}
	int startRow = 0;
	int endRow = 0;
	int total = 0;
	endRow = pageNum * 10;
	startRow = endRow - 9;
	
	
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();

		
		String sql2 = "select count(*) from article"; //역순 정렬 desending<->asc
		PreparedStatement stmt2 = con.prepareStatement(sql2);
		
		ResultSet rs2 = stmt2.executeQuery();
		if(rs2.next()){
			total = rs2.getInt("count(*)");
		}
		
		// 3. Query 실행 준비
		String sql = "select *from article order by id desc" + "   limit ?,10"; //역순 정렬 desending<->asc
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, startRow - 1);
		
		ResultSet rs = stmt.executeQuery();
// 		<div class="card" style="width:500px">
// 		  <img class="card-img-top" src="img_avatar1.png" alt="Card image">
// 		  <div class="card-img-overlay">
// 		    <h4 class="card-title">John Doe</h4>
// 		    <p class="card-text">Some example text.</p>
// 		    <a href="#" class="btn btn-primary">See Profile</a>
// 		  </div>
// 		</div>
		
		while (rs.next()) {
			String id = rs.getString("id");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String hit = rs.getString("hit"); 
			String id2 = rs.getString("id2");
			// 절대경로 		http://localhost/jspBoard/view.jsp?id=1
			// 상대경로		view.jsp?id=1
			//out.println("<a href='view.jsp?id=" + id + "'>" + id + "/" + title + "/" + id2 + "</a><br>");
%>
			<div class="card" style="width:200px">
 		  
 		  <div class="card-body">
 		    <h4 class="card-title"><%=title%></h4>
 		    <p class="card-text"><%=content %></p>
 		    <a href="view.jsp?id=<%=id%>" class="btn btn-primary"><%=id%></a>
 		  </div>
 		</div>
<% 
		}
		int startPage = 0;
		startPage = (pageNum - 1) / 10 * 10 + 1;

		int endPage = 0;
		endPage = startPage + 9;
		
		int totalPage = 0; // 전체 페이지 수 4를 도출
		if (total % 10 == 0) { // 10 20 30 40
			totalPage = total / 10;
		} else {
			totalPage = total / 10 + 1;
		}
		
		if(endPage > totalPage) endPage = totalPage;
		
		
//		if(startPage>1)out.println("<a href='list.jsp?page=" + (startPage-1) + "'> << </a>");
// 		<ul class="pagination">
// 		  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
// 		  <li class="page-item"><a class="page-link" href="#">1</a></li>
// 		  <li class="page-item active"><a class="page-link" href="#">2</a></li>
// 		  <li class="page-item"><a class="page-link" href="#">3</a></li>
// 		  <li class="page-item"><a class="page-link" href="#">Next</a></li>
// 		</ul>
		out.print("<ul class='pagination'>");
		for(int i = startPage; i <= endPage; i++){
%>
			 <li class="page-item">
				<a class="page-link" href="list.jsp?page=<%=i%>">
					<%=i%>
				</a>
			</li>
<% 
//		out.println("<a href='list.jsp?page=" + i + "'>" +i+ "</a>");
		}
		out.print("</ul>");	
			// ("<a href='주소'>")
			//<a href='list.jsp?page=2'> 내용 </a>
		
		
	//	if(endPage<totalPage)out.println("<a href='list.jsp?page=" + (endPage+1) + "'> >> </a>");


	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>	