<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include 지시어</title>
</head>
<body>
	<h1>include 지시어</h1>
	<div style="border: 1px solid red;">
		<%@ include file="01_ScriptingElement.jsp" %>
	</div>
	
	포함된 jsp 페이지에서 선언된 변수를 사용할 수 있음! <br>
	1부터 100까지의 합 : <%= sum %>
	
</body>
</html>