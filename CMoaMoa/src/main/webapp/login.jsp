<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoaMoa</title>
</head>
<body>
	<h2>MoaMoa</h2>
	<div id="body_left">
	   <form name="login_form" method="POST" action="loginPro.jsp">
		   <div>
		   		<input type="text" name="id" placeholder="ID" autocomplete="off">
		   </div>
		   <div>
		   		<input type="password" name="passwd" placeholder="Password" autocomplete="off">
		   </div>
		   <div>
		   	   <div>
			   		<button type="submit">로그인</button>
			   </div>
			   <div>
			   		<button type="button" onclick="location.href='signup.jsp'">회원가입</button>
			   </div>
		   </div>
		   
	   </form>
	</div>
</body>
</html>