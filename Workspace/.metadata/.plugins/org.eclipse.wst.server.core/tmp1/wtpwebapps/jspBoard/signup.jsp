<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<form method = "post" action = "signup_proc.jsp">
	ID : <input Type = "text" name ="id" onblur="move()"><br>
	PW : <input Type = "password" name="pw"><br>
	이름 : <input Type = "text" name="name"><br>
	<input Type = "submit" value="회원가입">
	
</form>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	function move(){
		$.ajax( {
			url : 'idcheck.jsp',
			type : 'get',
			data : {"id" : $('input[name=id]').val() },
			success : function(result){
				$("body").append(result);
//				console.log(result);
			}
		} );
	}
</script>