<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>

<body id="mypage">
	<%@ include file="/WEB-INF/layout/inc_mypage.jsp" %>

	<section id="sub" class="auctionList">

		<section class="sub__conts">
			<div class="container">
				<h3>경매 참여 이력</h3>

				<nav class="sub__nav--depth3">
					<ul>
						<li class="active"><button type="button">낙찰 내역</button></li>
					</ul>
				</nav>

				<table class="auction__table">
					<thead>
						<tr>
							<th>낙찰일</th>
							<th>낙찰 물품</th>
							<th>낙찰 금액</th>
							<th>결제마감일</th>
							<th>결제</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${not empty aList}">
								<c:forEach items="${aList }" var="auction">
									<tr>
										<td>${auction.auctionEndDate }</td>
										<td>${auction.auctionCategory }</td>
										<td>${auction.auctionMaxprice }</td>
										<td class="limit">${auction.auctionRemainingTime } 자정까지</td>
										<td><button class="btn-basic" type="button" onclick="goRequestCard();">결제하기</button></td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5">해당되는 정보가 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</section>
	</section>

	<script>
		// 외부 결제 api
		function goRequestCard() {
			IMP.init('iamport');

			IMP.request_pay({
				pg: 'inicis', // version 1.1.0부터 지원.
				pay_method: 'card',
				merchant_uid: 'merchant_' + new Date().getTime(),
				name: '주문명:결제테스트',
				amount: 14000, //판매 가격
				buyer_email: 'iamport@siot.do',
				buyer_name: '구매자이름',
				buyer_tel: '010-1234-5678',
				buyer_addr: '서울특별시 강남구 삼성동',
				buyer_postcode: '123-456'
			}, function (rsp) {
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		}
	</script>
</body>

</html>