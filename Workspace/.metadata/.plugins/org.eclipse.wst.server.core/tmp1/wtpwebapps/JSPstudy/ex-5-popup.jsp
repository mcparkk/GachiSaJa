<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="jquery.cookie.js"></script>
<script>
	function closePopup() {
		var isCheck = $("#popup").is(":checked");
		if(isCheck == true){
			//��Ű����Ǵ� �̸�  name : open ���� �����
			$.cookie("open", "djdjdjdjdj", {expires:1});
		}
		window.close();
	}
 // �˾�â ���� �ڵ� - window.close();
</script>
<input type="checkbox" id="popup"> ���� �Ϸ� ���� ���� 
<a href="#"onclick="closePopup()">[�ݱ�]</a>
