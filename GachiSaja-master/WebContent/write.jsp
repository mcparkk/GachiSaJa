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
	height: 1150px
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
				<h1>판매하기</h1>
				<form method="post" action="write_proc.jsp">
					<h3></h3>
					제목
					<h5></h5>
					<input type="text" name="title" style="width: 100%;"><br>
					<h3></h3>
					내용
					<h5></h5>
					<textarea name="content"
						style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
						rows=20>
	</textarea>
					<br>
					<h3></h3>

					<html>
<head>
<meta charset="utf-8">
<title>클릭한 위치에 마커 표시하기</title>

</head>
<body>
	<div id="map" style="width: 100%; height: 450px;"></div>
	<p>
		<em>판매 장소를 클릭해주세요!</em>
	</p>
	<div id="clickLatlng"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63cd2fc1a7f268ba3fdbcf19b28ed9d3"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new daum.maps.Marker({
			// 지도 중심좌표에 마커를 생성합니다 
			position : map.getCenter()
		});
		// 지도에 마커를 표시합니다
		marker.setMap(map);

		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {
			// 클릭한 위도, 경도 정보를 가져옵니다 
			var latlng = mouseEvent.latLng;

			// 마커 위치를 클릭한 위치로 옮깁니다
			marker.setPosition(latlng);

			var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
			message += '경도는 ' + latlng.getLng() + ' 입니다';

			var resultDiv = document.getElementById('clickLatlng');
			resultDiv.innerHTML = message;
		});
	</script>
</body>
					</html>

					<input type="submit" value="작성완료">
					<!DOCTYPE html>
				</form>
				<html>
</script>
</body>
</html>
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
