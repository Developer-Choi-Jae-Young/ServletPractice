<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String year = new SimpleDateFormat("yyyy").format(new Date());
%>
	Copyright &copy; 1998-<%= year %>, KH L classRoom
	전달된 값 : ${ param.month }
</body>
</html>