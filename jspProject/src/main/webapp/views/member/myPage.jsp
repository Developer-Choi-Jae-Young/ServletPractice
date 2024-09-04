<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.outer {
		background-color: tomato;
		color: white;
		width: 1000px;
		margin: auto;
		margin-top: 50px;
	}
	
	#enroll-form table {
		margin: auto;
	}
	
	#enroll-form input {
		margin: 5px;
	}
</style>

</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<div class="outer">
		<br>
		
		<h2 align="center">마이페이지</h2>
	
		<form id="enroll-form" action="<%= contextPath %>/update.me" method="post">
			<table>
				<tr>
					<td>* 아이디</td>
					<td>
						<input type="text" name="userId" maxlength="12" value="${ sessionScope.loginUser.userId }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td>
						<input type="text" name="userName" maxlength="6" value="${ sessionScope.loginUser.userName }" required>
					</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>
						<input type="tel" name="phone" placeholder="- 포함해서 입력" value="${ sessionScope.loginUser.phone }">
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
						<input type="email" name="email" value="${ sessionScope.loginUser.email }">
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<input type="text" name="address" value="${ sessionScope.loginUser.address }">
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<input type="checkbox" name="interest" value="야구" id="baseball">
						<label for="baseball">야구</label>
	
						<input type="checkbox" name="interest" value="만화" id="cartoon">
						<label for="cartoon">만화</label>
	
						<input type="checkbox" name="interest" value="축구" id="soccer">
						<label for="soccer">축구</label>
						
						<br>
						
						<input type="checkbox" name="interest" value="공부" id="study">
						<label for="study">공부</label>
	
						<input type="checkbox" name="interest" value="게임" id="game">
						<label for="game">게임</label>
					</td>
				</tr>
			</table>
			
			<br><br>
			
			<div align="center">
				<button class="btn btn-sm btn-primary" type="submit">정보수정</button>
				<button class="btn btn-sm btn-info" type="button" data-toggle="modal" data-target="#updatePwdModal">비밀번호 변경</button>
				<button class="btn btn-sm btn-warning" type="button" data-toggle="modal" data-target="#deleteMemberModal">회원 탈퇴</button>
			</div>
			
			<br><br>
		</form>
	</div>
	
	<!-- 비밀번호 변경용 모달 -->	
	<div class="modal fade" id="updatePwdModal" tabindex="-1" aria-labelledby="updatePwdModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="updatePwdModalLabel">비밀번호 변경</h1>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">&times</button>
	      </div>
	      <div class="modal-body">
	        <form action="<%= contextPath %>/updatePwd.me" method="post">
	          <div class="mb-3">
	            <label for="userPwd" class="col-form-label">현재 비밀번호:</label>
	            <input type="password" class="form-control" id="userPwd" name="userPwd">
	          </div>
	          <div class="mb-3">
	            <label for="newPassword" class="col-form-label">변경할 비밀번호:</label>
	            <input type="password" class="form-control" id="newPassword" name="newPassword"></input>
	          </div>
	           <div class="mb-3">
	            <label for="newPasswordCheck" class="col-form-label">변경할 비밀번호 확인:</label>
	            <input type="password" class="form-control" id="newPasswordCheck" name="newPasswordCheck"></input>
	          </div>
	          
	          <br>
	          
	          <button class="btn btn-sm btn-info" onclick="return pwdCheck();">비밀번호 변경</button>
	        </form>
	      </div>
	      <!-- 모달 푸터 부분 -->
	      <!--<div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Send message</button>
	      </div> -->
	    </div>
	  </div>
	</div>
	
	<!-- 회원탈퇴 모달 -->	
	<div class="modal fade" id="deleteMemberModal" tabindex="-1" aria-labelledby="deleteMemberModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h2 class="modal-title fs-5" id="deleteMemberModalLabel">회원탈퇴</h2>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">&times</button>
	      </div>
	      <div class="modal-body">
	        <form action="<%= contextPath %>/delete.me" method="post">
	          <b>
	          	탈퇴 후 복구 불가능합니다. <br>
	          	그래도 탈퇴하시겠습니까?
	          </b>
	          <br><br>
	          <div class="mb-3">
	            <label for="userPwd" class="col-form-label">비밀번호:</label>
	            <input type="password" class="form-control" id="userPwd" name="userPwd" required>
	            <input type="hidden" name="userId" value="${ loginUser.userId }">
	          </div>
	          
	          <br>
	          
	          <button class="btn btn-sm btn-info">탈퇴하기</button>
	        </form>
	      </div>
	      <!-- 모달 푸터 부분 -->
	      <!--<div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Send message</button>
	      </div> -->
	    </div>
	  </div>
	</div>
	
	<script>
		function pwdCheck() {
			const pwd = document.querySelector("#updatePwdModal input[name=newPassword]").value;
			const pwdCheck = document.querySelector("#updatePwdModal input[name=newPasswordCheck]").value;
	
			if(pwd != pwdCheck) {
				alert("비밀번호와 비밀번호 확인 입력값이 다릅니다.");
				return false;
			}
		}
		
		$(function() {
			const interest = "${ sessionScope.loginUser.interest }";
			console.log(interest);
			const checkArr = $("input[name=interest]");
			
			for(let check of checkArr) {
				if(interest.includes(check.value)) {
					check.checked = true;
				}
			}
		});
	</script>
</body>
</html>