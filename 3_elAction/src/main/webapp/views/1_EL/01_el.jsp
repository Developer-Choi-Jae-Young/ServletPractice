<%@page import="com.kh.model.vo.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 기본구문</title>
</head>
<body>
	<%--
	<h3>기존 방식(스크립트릿, 표현식)으로 각 scope에 저장된 데이터를 화면에 출력</h3>
	<%
		// 스크립트릿 : 자바 코드를 사용할 수 있는 영역
		
		// request scope에서 데이터 가져오기
		String classRoom = (String)request.getAttribute("classRoom");
		Person student = (Person)request.getAttribute("student");
		
		// session scope에서 데이터 가져오기
		String academy = (String)session.getAttribute("academy");
		Person teacher = (Person)session.getAttribute("teacher");
	 %>
	 
	 <p>
	 	학원 : <%= academy %> <br>
	 	강의장 : <%= classRoom %> <br>
	 	강사 : <%= teacher.getName() %>, 
	 		  <%= teacher.getAge() %>, 
	 		  <%= teacher.getGender() %> <br>
	 	학생 정보
	 	<ul>
	 		<li> <%= student.getName() %> </li>
	 		<li> <%= student.getAge() %> </li>
	 		<li> <%= student.getGender() %> </li>
	 	</ul>
	 </p>
	  --%>
	  
	  <h3>EL을 사용하여 보다 쉽게 각 scope영역의 데이터를 화면에 출력</h3>
	  <p>
	  	EL을 이용하여 getXXX 메소드를 사용하지 않고 키값만 제시하면 바로 접근 가능 <br>
	  	기본적으로 EL은 JSP 내장 객체를 구분하지 않고 모든 내장 객체의 키값을 검색하여 존재하는 경우 
	  	그 값을 가져옴
	  </p>
	  
	 <p>
	 	학원 : ${ academy }<br>
	 	강의장 : ${ classRoom } <br>
	 	강사 : ${ teacher.name }, ${ teacher.age }, ${ teacher.gender } <br>
	 	학생정보 
	 	<ul>
	 		<li>${ student.name }</li>
	 		<li>${ student.age }</li>
	 		<li>${ student.gender }</li>
	 	</ul>
	 </p>
	 
	 <h3>동일한 키값으로 저장된 데이터 확인</h3>
	 scope 값 : ${ scope } <br>
	 <!--
	 	EL은 공유범위가 가장 작은 scope부분 해당 키값을 검색함
	 	page -> request -> session -> application 
	  -->
	  
	  테스트 : ${ test } <!-- 찾기 못한 경우 빈값으로 확인됨 -->
	  
	  <h3>직접 scope에 데이터 담기</h3>
	  <%
	  	// page scope에 데이터 담기
	  	pageContext.setAttribute("scope", "page~~~");
	  %>
	  
	  page scope : ${ scope } 또는 ${ pageScope.scope } <br>
	  request scope : ${ requestScope.scope } <br>
	  session scope : ${ sessionScope.scope } <br>
	  application scope : ${ applicationScope.scope }
</body>
</html>