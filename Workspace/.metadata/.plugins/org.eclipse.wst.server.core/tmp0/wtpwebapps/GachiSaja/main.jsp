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
				<h2></h2>
				<img src="image/lion.png" width="100" height="100" align="center">
				<h1>가치사자</h1>
				<p>혼자 구매하기에 너무 많은 묶음상품! 근처 이웃들과 대화하여 같이 사보는 건 어떨까요?</p>
				<hr>
				<h3>현재 위치 주변 거래</h3>
				<h1></h1>
				<!DOCTYPE html>
				<html>
<head>
<meta charset="utf-8" />
<title>Daum 지도 시작하기</title>
</head>
<body>
	<div id="map" style="width: 980px; height: 550px;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63cd2fc1a7f268ba3fdbcf19b28ed9d3"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566535, 126.977969190007), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨 
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">JSP책 판매합니다.</div>'; // 인포윈도우에 표시될 내용입니다
				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);
			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new daum.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition, message);
		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map,
				position : locPosition
			});

			var iwContent = message, // 인포윈도우에 표시할 내용
			iwRemoveable = true;

			// 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			// 인포윈도우를 마커위에 표시합니다 
			infowindow.open(map, marker);

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}
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