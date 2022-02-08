<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>

	<div class="container">
		<h1>회원 정보 추가</h1>
		<form method="post" action="/lesson06/add_user">
			<div class="form-group">
				<label for="name">이름:</label>
				<input type="text" id="name" class="form-control" name="name" placeholder="이름을 입력해 주세요">
			</div>
			
			<div class="form-group">
				<label for="yyyymmdd">생년월일:</label>
				<input type="text" id="yyyymmdd" class="form-control" name="yyyymmdd" placeholder="생년월일을 입력해 주세요">
			</div>
			
			<div class="form-group">
				<label for="email">이메일 주소:</label>
				<input type="text" id="email" class="form-control" name="email" placeholder="이메일주소를 입력해 주세요">
			</div>
			
			<div class="form-group">
				<label for="introduce">자기소개:</label>
				<textarea id="introduce" class="form-control" name="introduce" rows="10" cols="10" placeholder="자기소개를 입력해 주세요"></textarea>
			</div>
			
			<input type="button" id="addBtn" class="btn btn-success" value="추가">
		</form>
	
	</div>

</body>

<script>
$(document).ready(function() {
	
	
	// 1) jquery의 submit 기능 이용하기
	/* $('form').on('submit', function(e) {
		// e.preventDefault(); // submit 되는 것을 막는다.
		// alert("추가 버튼 클릭");

		// validation check
		let name = $('#name').val().trim();
		if (name.length < 1) {
			alert("이름을 입력해주세요");
			return false;
		}
		
		let yyyymmdd = $('#yyyymmdd').val().trim();
		if (yyyymmdd.length < 1) {
			alert("생년월일을 입력해주세요");
			return false;
		}
		
		let email = $('#email').val().trim();
		if (email.length < 1) {
			alert("이메일을 입력해주세요");
			return false;
		}
		// 유효성 체크 동과 => 여기까지 도달하면 서브밋 시켜준다.
		
	});
		 */
	
	// 2) jquerydml AJAX 통신 이용하기
	// -- 버튼 타입을 submit이 아닌 button으로 바꾼다.
	$('#addBtn').on('click', function(e) {
		// alert("추가 버튼 클릭");
	
		let name = $('#name').val().trim();
		if (name.length < 1) {
			alert("이름을 입력해주세요");
			return false;
		}
		
		let yyyymmdd = $('#yyyymmdd').val().trim();
		if (yyyymmdd == '') {
			alert("생년월일을 입력해주세요");
			return false;
		}
		
		// 생년월일 정보가 모두 숫자인지 확인
		if (isNaN(yyyymmdd)) { // isNaN(yyyymmdd) : 숫자가 아닌 문자가 있을 때 true 
			alert("숫자만 입력해주세요");
			return;
		}
		
		let email = $('#email').val().trim();
		if (email.length < 1) {
			alert("이메일을 입력해주세요");
			return false;
		}
		
		let introduce = $('#introduce').val();
		
		// 제대로 값이 넘어왔는지 
		console.log(name);
		console.log(email);
		console.log(yyyymmdd);
		console.log(introduce);
		
		// AJAX 통신 : 폼태그와 상관엇이 비동기로 요청(request)
		$.ajax({
			type: 'POST'
			, url: '/lesson06/add_user'
			, data: {'name':name, 'yyyymmdd':yyyymmdd, 'email':email, 'introduce':introduce}
			, success: function(data) {
				alert(data);
				location.href = "/lesson06/add_user_view"
				// location.reload(); - 새로고침
			}
			, complete: function(data) {
				alert("완료");
			}
			, error: function(e) {
				alert("error : " + e);
			}
		});
		
	});
	
});

</script>


</html>