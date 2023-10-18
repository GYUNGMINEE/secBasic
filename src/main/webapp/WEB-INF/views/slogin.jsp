<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 더 멋진 석일</title>
</head>
<body>
	<h1>구두가 뽀인트</h1>
	<form action="/sec/slogin" method="post"> <!-- method를 반드시 post로 해야함 --> 
		<sec:csrfInput/> <!-- get방식이 아닐때는 토큰을 보내야함(form태그 안에), 이건 서버가 해석하는 서버 태그 곧 jstl은 서버태그 -->
<!-- 		만약 default값 username이 아닌 sukilname으로 바꾸었다면 name에 sukilname쓰기 -->
		아이디 <input type="text" name="username" value=""><br> 
		암호    <input type="password" name="password" value=""><br> 
		<button type="submit">로그인</button>
	</form>
	
	<h1>manul login(어쩌다 필요)</h1>
	<form action="/sec/mylogin" method="post"> <!-- method를 반드시 post로 해야함 --> 
		<sec:csrfInput/> <!-- get방식이 아닐때는 토큰을 보내야함(form태그 안에) -->
		아이디2 <input type="text" name="myname" value=""><br> 
		암호2    <input type="password" name="mypass" value=""><br> 
		<button type="submit">로그인2</button>
	</form>
</body>
</html>