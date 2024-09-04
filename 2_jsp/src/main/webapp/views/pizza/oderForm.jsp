<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자 주문하기</title>
</head>
<body>
	<h1>피자 주문하기</h1>
	<h2>현재 날짜</h2>
	<%
		Date today = new Date();
	%>
	<p><%= today.toLocaleString() %></p>
	<form action="/2_jsp/orderPizza.do">
		<fieldset>
			<legend>주문자 정보</legend>
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="userName" required></td>
				</tr>
	
				<tr>
					<td>연락처</td>
					<td><input type="tel" name="userTel" required></td>
				</tr>
	
				<tr>
					<td>주소</td>
					<td><input type="text" name="userAddr" required></td>
				</tr>
	
				<tr>
					<td>요청사항</td>
					<td><textarea placeholder="내용을 입력해주세요" name="reqText" required></textarea></td>
				</tr>
			</table>
		</fieldset>
		<fieldset>
			<legend>주문 정보</legend>
			<table>
				<tr>
					<td>피자</td>
					<td>
						<select name="pzCategory">
							<option value="콤비네이션">콤비네이션</option>
							<option value="치즈피자">치즈피자</option>
							<option value="불고기피자">불고기피자</option>
							<option value="하와이안피자">하와이안피자</option>
							<option value="페퍼로니피자">페퍼로니피자</option>
						</select>
					</td>
				</tr>
	
				<tr>
					<td>토핑</td>
					<td>
						<input type="checkbox" name="topping" value="치즈" checked>치즈
						<input type="checkbox" name="topping" value="올리브">올리브
						<input type="checkbox" name="topping" value="불고기">불고기
						<input type="checkbox" name="topping" value="치즈">치즈 크러스트 <br>
						<input type="checkbox" name="topping" value="파인애플">파인애플
						<input type="checkbox" name="topping" value="베이컨">베이컨
						<input type="checkbox" name="topping" value="포테이토">포테이토
						<input type="checkbox" name="topping" value="새우">새우
					</td>
				</tr>
	
				<tr>
					<td>사이드</td>
					<td>
						<input type="checkbox" name="side" value="콜라" checked> 콜라
						<input type="checkbox" name="side" value="사이다"> 사이다
						<input type="checkbox" name="side" value="피클"> 피클 <br>
						<input type="checkbox" name="side" value="치즈오븐스파게티"> 치즈오븐스파게티
						<input type="checkbox" name="side" value="치킨텐더"> 치킨텐더
					</td>
				</tr>
			</table>
		</fieldset>
		<input type="submit" value="주문">
		<input type="reset" value="초기화">
	</form>
</body>
</html>