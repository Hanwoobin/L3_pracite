<%@page contentType="text/html; charset=UTF-8"%>

<html>
<head>
	<title>로그인 페이지</title>
</head>
<body>
	<div class = "main">
		<h3>login Page</h3>
		<form action = "login_check.jsp" method="POST">
			<p>ID : <input type = "text" name = "ID"></p>
			<p>Password : <input type = "password" name = "password"></p>
			<button type="submit">로그인</button>
		</form>
	</div>

</body>


</html>