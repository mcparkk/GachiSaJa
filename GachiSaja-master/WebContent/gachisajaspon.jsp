<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 800px}
    
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
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="http://localhost/GachiSaja/main.jsp">
      	<img src="image/lion.png" width="30" height="30" border="0">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="list.jsp" >구매하기</a></li>
        <li><a href="write.jsp">판매하기</a></li>
        <li><a href="#">카테고리</a></li>
        <li><a href="#">Support</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="signin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">가치사자란?</a></p>
      <p><a href="#">채용</a></p>
      <p><a href="#">후원하기</a></p>
    </div>
    
    <div class="col-sm-8 text-center"> 
  <br></br>
   <h2>후원하기</h2>
   <br></br>
   <p>강선빈  카카오뱅크 3333-03-1234567</p>
   <br></br>
   <p>박민철 기업은행 01038277921 </p>
<html>
<body>
</body>
</html>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>
        	</button>
      		<a href="https://www.bloter.net">
      		<img src="image/bloter.png" width="100" height="30" border="0"></a>
      	</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Copyright 2019. SunbinMinchul Co., Ltd. All rights reserved.</p>
</footer>

</body>
</html>