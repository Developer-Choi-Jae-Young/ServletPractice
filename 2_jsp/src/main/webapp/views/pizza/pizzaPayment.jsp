<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>피자 주문 내역</h1>
	<h2>주문자 정보</h2>
	<p style="color: blue;"> <%= request.getAttribute("userAddr") %> </p>
	<p style="color: blue;"> <%= request.getAttribute("userTel") %> </p>
	<h2>요청 사항</h2>
	<p> <%= request.getAttribute("userTel") %> </p>
	<hr>
	<h2>주문 정보</h2>
	<p> <%= request.getAttribute("reqText") %> </p>
	<ul>
		<li>토핑 추가 항목</li>
			<ul>
				<% for(String top : (String[])request.getAttribute("topping")) { %>
					<li> <%= top %> </li> 
				<% } %>
			</ul>
		<li>사이드 선택 항목</li>
			<ul>
				<% for(String si : (String[])request.getAttribute("side")) { %>
					<li> <%= si %> </li>
				<% } %>
			</ul>
	</ul>
	<hr>
	<h1><%= request.getAttribute("userName") %>님!</h1>
	<span style="font-size: 20pt; color: blue;">즐거운</span> <span style="font-size: 20pt; color: red;">식사</span> 
	<span style="font-size: 20pt;">되세요</span> <span style="font-size: 20pt; color: yellow;">:)</span>
</body>
</html>