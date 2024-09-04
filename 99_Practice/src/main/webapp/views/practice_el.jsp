<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연습 페이지</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container m-5">
		<h2>EL 연산 연습하기</h2>
		
		<hr>
	
		<!-- TODO: EL 표기법을 사용하여 랜덤값 및 연산 결과 출력하기 -->
		<div class="row">
		
			<div class="col">
				<div class="input-group">
			  		<span class="input-group-text bg-info-subtle">랜덤값1</span>
			  		<input type="text" class="form-control" value=${ num1 } readonly>
				</div>
			</div>
			
			<div class="col">
				<div class="input-group">
			  		<span class="input-group-text bg-danger-subtle">랜덤값2</span>
			  		<input type="text" class="form-control focus-ring focus-ring-danger" value=${ num2 } readonly>
				</div>
			</div>			
		</div>
		
		<hr>
		
		<div class="row">
			
			<div class="col">
				
				<div class="input-group">
			  		<span class="input-group-text bg-success-subtle">덧셈 결과</span>
			  		<input type="text" class="form-control focus-ring focus-ring-success" value=${ num1 + num2 } readonly>
				</div>
				
			</div>
			
			<div class="col">
				
				<div class="input-group">
			  		<span class="input-group-text bg-success-subtle">빼기 결과</span>
			  		<input type="text" class="form-control focus-ring focus-ring-success" value=${ num1 - num2 } readonly>
				</div>
				
			</div>			
			
		</div>
		
		<br>
		
		<div class="row">
			
			<div class="col">
				
				<div class="input-group">
			  		<span class="input-group-text bg-success-subtle">곱셈 결과</span>
			  		<input type="text" class="form-control focus-ring focus-ring-success" value=${ num1 * num2 } readonly>
				</div>
				
			</div>
			
			<div class="col">
				
				<div class="input-group">
			  		<span class="input-group-text bg-success-subtle">나눗셈 결과(몫)</span>
			  		<input type="text" class="form-control focus-ring focus-ring-success" value=${ num1 / num2 } readonly>
				</div>
				
			</div>

			<div class="col">
				
				<div class="input-group">
			  		<span class="input-group-text bg-success-subtle">나눗셈 결과(나머지)</span>
			  		<input type="text" class="form-control focus-ring focus-ring-success" value=${ num1 % num2 } readonly>
				</div>
				
			</div>				
			
		</div>		
	</div>
</body>
</html>