<%@page contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>회원가입</title>
</head>
	
<body>
	<div class = "menu_bar">
		<%@include file ="menu.jsp" %>
	</div>
	<div class = "sign_up">
		<form action="signUp_process.jsp" method="POST">
			<p>ID       : <input type = "text" name = "ID"></p>
			<p>password : <input type = "password" name = "password"></p>
			<p>name     : <input type = "text" name = "name"></p>
			<p>성별          	: <input type = "radio" name = "sex" value="남자">남자
					<input type = "radio" name = "sex" value = "여자">여자
			</p>
			<p>휴대폰		: <input type = "tel" name = "tel"></p>
			<p>설명 		: <input type = "text" name = "description"></p>
			끝
			<button type = "submit">회원가입</button>
		</form>
	</div>
</body>

</html>