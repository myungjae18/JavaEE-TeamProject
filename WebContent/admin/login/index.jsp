<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: black;
}
* {
	box-sizing: border-box;
}
/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}
/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}
/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}
/* Set a style for the submit button */
button {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}
button{
	opacity: 1;
}
/* Add a blue text color to links */
a {
	color: dodgerblue;
}
/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$("#loginBt").click(function(){
		login();
	});
	$("#logoutBt").click(function(){
		logout();
	});
});

function login(){
	$("form").attr({
		method:"post",
		action:"/admin/login"
	});
	$("form").submit();
}

function logout(){
	location.href="/admin/logout";
}
</script>
</head>
<body>
	<div class="container">
		<form>
			<h1>관리자 로그인</h1>
			<hr>
			<%if(session.getAttribute("master")==null){ %>
				<input type="text" placeholder="Enter ID" name="admin_id">
				<input type="password" placeholder="Enter Password" name="admin_pass">
			<%}else{ %>	
				현재 관리자 계정으로 로그인 중입니다.	
			<%} %>	
		</form>
			<%if(session.getAttribute("master")==null){ %>
				<button id="loginBt">로그인</button>
			<%}else{ %>	
				<button id="logoutBt">로그 아웃</button>
			<%} %>	
	</div>
</body>
</html>