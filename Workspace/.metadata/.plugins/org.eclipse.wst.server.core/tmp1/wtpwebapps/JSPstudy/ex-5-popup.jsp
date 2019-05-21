<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="jquery.cookie.js"></script>
<script>
	function closePopup() {
		var isCheck = $("#popup").is(":checked");
		if(isCheck == true){
			//쿠키저장되는 이름  name : open 으로 저장됨
			$.cookie("open", "djdjdjdjdj", {expires:1});
		}
		window.close();
	}
 // 팝업창 제거 코드 - window.close();
</script>
<input type="checkbox" id="popup"> 오늘 하루 열지 않음 
<a href="#"onclick="closePopup()">[닫기]</a>
