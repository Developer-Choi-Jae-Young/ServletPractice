<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습 (1) - 랜덤 숫자 뽑기 - 결과페이지</title>
</head>
<body>
	<%-- 1 ~ 45까지 랜덤 숫자 6개를 뽑아 출력하기 --%>
	<ul>
		<% 
			for(int i = 0; i < 6; i++) {
		%>
		<li><%= (int)(Math.random() * 45) + 1 %></li>
		<%
			}
		%>
	</ul>
</body>
</html>