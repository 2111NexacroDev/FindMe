<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FIND ME</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="../resources/css/reset.css"> <!-- 기본스타일 초기화 -->
	<link rel="stylesheet" href="../resources/css/fonts.css"> <!-- CSS 폰트 SCDm pretendard -->
	<link rel="stylesheet" href="../resources/css/common.css"> <!-- 메인에 들어가는 CSS -->
	<link rel="stylesheet" href="../resources/css/sub.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="../resources/js/common.js" async></script>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>

<body id="join" class="sub--member">
	<%@ include file="/WEB-INF/layout/inc_header.jsp" %>

	<div id="title-div">
		<h3 id="a-Join">회원가입</h3>
	</div>

	<form action="/join/form.do" method="post">
		<div id="join__box" class="container">
			<div id="content">
				<div id="name" class="content-div">
					<input type="text" id="user_Name" class="input" placeholder="이름" name="user_Name">
				</div>
				<div id="id" class="content-div">
					<input type="text" id="user_Id" class="input" placeholder="아이디" name="user_Id">
					<p id="idChk">이미사용중인 ID입니다.</p>
				</div>
				<div id="password" class="content-div">
					<input type="password" id="user_Pwd" class="input" placeholder="비밀번호" name="user_Pwd">
				</div>
				<div id="eMail" class="content-div">
					<input type="text" id="user_Email" class="input" placeholder="E-mail" name="user_Email">
				</div>
				<div id="phone" class="content-div">
					<input type="text" id="user_Phone" class="input" placeholder="전화번호 입력(-생략)" name="user_Phone">
				</div>
				<div id="adress" class="content-div">
					<input type="text" id="user_Address" class="input" placeholder="주소" name="user_Address">
				</div>
				<div id="ok-div">
					<button type="button" id="ok-button">가입하기</button>
				</div>
			</div>
		</div>
	</form>
	<%@ include file="/WEB-INF/layout/inc_footer.jsp" %>

	<script>
		document.getElementById("idChk").style.display = "none";

		$("#user_Id").on("blur", function () {
			var user_Id = $("#user_Id").val();
			$.ajax({
				url: "/join/id.do",
				type: "get",
				data: {
					"user_Id": user_Id
				},
				success: function (data) {
					console.log(data);
					if (data != 0) {
						$("#idChk").show();
					} else {
						$("#idChk").hide();
					}
				},
				error: function () {
					console.log("실패");
				}
			});

		});

		$("#ok-button").on("click", function () {
			var user_Name = $("#user_Name").val();
			var user_Id = $("#user_Id").val();
			var user_Pwd = $("#user_Pwd").val();
			var user_Email = $("#user_Email").val();
			var user_Phone = $("#user_Phone").val();
			var user_Address = $("#user_Address").val();
			$.ajax({
				url: "/join/check.do",
				type: "POST",
				data: {
					"user_Name": user_Name,
					"user_Id": user_Id,
					"user_Pwd": user_Pwd,
					"user_Email": user_Email,
					"user_Phone": user_Phone,
					"user_Address": user_Address
				},
				success: function (data) {
					if (data == "success") {
						//로그인 창으로 
						alert("회원가입에 성공했습니다.");
						location.href = '/user/login.do';
					} else {
						alert("회원가입에 실패했습니다.");
					}
				},
				error: function () {
					alert("회원가입에 실패했습니다.");
				}
			});
		});
	</script>
</body>

</html>