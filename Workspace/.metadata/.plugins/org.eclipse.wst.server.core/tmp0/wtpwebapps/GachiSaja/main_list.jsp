<%@page import="DataBase.DBManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBase.DBManager"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 930px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="http://localhost/GachiSaja/main.jsp">
					<img src="image/lion.png" width="30" height="30" border="0">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="list.jsp">구매하기</a></li>
					<li><a href="write.jsp">판매하기</a></li>
					<li><a href="#">카테고리</a></li>
					<li><a href="#">Support</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="signin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">가치사자란?</a>
				</p>
				<p>
					<a href="#">채용</a>
				</p>
				<p>
					<a href="#">후원하기</a>
				</p>
			</div>
			<div class="col-sm-8 text-center">
				<br>
				<h1>구매하기</h1>
				<p>
				<br><br>
				<div class="container col-sm-12 text-center ">
          
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>num</th>
        <th>title</th>
        <th>hit</th>
      </tr>
    </thead>
<%

		int startRow = 0;
		int endRow = 0;
		try{
			DBManager DataBase = DBManager.getInstance();
			Connection con = DataBase.open();
			
			String sql = "select * from gachisajapost order by num desc";
			PreparedStatement stmt = con.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
		while(rs.next()){
			String num = rs.getString("num");
			String title = rs.getString("title");
			String hit = rs.getString("hit");
%>
<tbody>
      <tr>
        <td class = "table-num"><%=num%> </td>
        <td class = "table-title"><a href ="#" target= "title"><%=title%></a></td>
        <td class =  "table-hit"><%=hit%></td>
      </tr>
     
<% 			
		}
%>
</tbody>
</table>
</div>

<%   	
		
		
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>			
			 	
				
<!--  
<div class="container col-sm-12 text-center ">
          
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>num</th>
        <th>post</th>
        <th>hit</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
-->
			</div>	
			
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>
						</button>
						<a href="https://www.bloter.net"> <img src="image/bloter.png"
							width="100" height="30" border="0"></a>
					</p>
				</div>
				<div class="well">
					<p>
						</button>
						<a href="https://www.zdnet.co.kr"> <img src="image/zdnet.png"
							width="100" height="30" border="0"></a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Copyright 2019. SunbinMincheol Co., Ltd. All rights reserved.</p>
	</footer>

</body>
</html>