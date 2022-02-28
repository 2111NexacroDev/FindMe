<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MY PAGE</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/fonts.css">
	<link rel="stylesheet" href="../resources/css/common.css">
	<link rel="stylesheet" href="../resources/css/sub.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="../resources/js/common.js" async></script>
	<script src="../resources/js/sub.js"></script>
</head>

<body id="mypage" class="sub--member">
	<%@ include file="/WEB-INF/layout/inc_mypage.jsp"%>

	<section id="sub" class="withdraw">
		<section class="sub__conts">
			<h3>회원탈퇴</h3>

			<div id="withdraw__box" class="container">
				<div id="ment-1">정말 탈퇴하시겠습니까?</div>
				<div id="ment-2">회원을 탈퇴하시면</div>
				<div id="ment-3">마일리지, 작성글 모아보기 서비스를 이용할 수 없습니다.</div>

				<!-- <form action="/remove/form.do" method="post"> -->
				<div id="checkbox">
					확인 &nbsp;&nbsp;<input type="checkbox" id="check">
				</div>
				<div id="remove-div">
					<button type="button" id="remove">회원탈퇴 하기</button>
				</div>
				<!--  </form> -->
			</div>
		</section>
	</section>

	<script>
		$("#remove").on("click", function () {
			var checkbox = $('#check').is(':checked');
			var userId = "${loginUser.user_Id }";
			if (checkbox) {
				$.ajax({
					url: "/remove/check.do",
					type: "GET",
					data: {
						"user_Id": userId
					},
					success: function (data) {
						if (data == "success") {
							alert("회원탈퇴 되었습니다.");
							location.href = '/home.do';
						} else {
							alert("회원탈퇴에 실패하셨습니다.");
						}
					},
					error: function () {
						alert("ajax 실패!");
					}
				});
			} else {
				alert("탈퇴 약관에 동의해주세요.");
			} // if end
		});
	</script>
</body>

</html>