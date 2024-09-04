<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Standard Action Tag - forward</title>
</head>
<body>
	<h3>jsp:forward</h3>
	<p>현재 페이지에 접근 시 특정 페이지로 이동</p>
	
	<jsp:forward page="footer.jsp"></jsp:forward>
	<%-- 요청된 url은 유지하면서 페이지만 이동시킴 --%>
</body>
</html>