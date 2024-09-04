<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>standard action tag - include</title>
</head>
<body>
	<h3>jsp:include</h3>
	<p>또 다른 페이지를 포함하고자 할 때 쓰는 태그</p>
	
	<h4>[1] 기존 include 지시어를 이용한 방식</h4>
	<%-- 
	<%@ include file="footer.jsp" %>
	<br>
	year 변수로 접근 가능한가 ? <%= year %> 
	<br>
	포함된 페이지의 변수로 접근이 가능하고, 같은 이름의 변수 선언 불가!
	<% String year = "2020"; %>
	--%>
	
	<h4>[2] 표준 액션 태그를 이용한 방식</h4>
	<jsp:include page="footer.jsp"/>
	<%--<jsp:include page="footer.jsp"></jsp:include>--%>
	<br>
	<p>
		특징 1) include하고 있는 페이지에 선언된 변수를 공유하지 않음 <br>
		=> 동일한 이름의 변수를 선언할 수 있음
	</p>
	<% String year = "2020"; %>
	<p>
		특징 2) include되는 페이지로 데이터(값)을 전달할 수 있음
	</p>
	<jsp:include page="footer.jsp">
		<jsp:param name="month" value="8"/>
	</jsp:include>
</body>
</html>