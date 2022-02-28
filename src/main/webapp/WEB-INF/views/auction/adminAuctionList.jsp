<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FIND ME</title>
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

<body>
	<%@ include file="/WEB-INF/layout/inc_header.jsp"%>

	<section id="sub" class="auction-admin">
		<section class="sub__common">
			<div class="sub__visual auction">
				<h2>온라인 경매</h2>
			</div>

			<nav class="sub__nav">
				<div class="container">
					<ul>
						<li><a href="/auction/guide.do">이용 안내</a></li>
						<li><a href="/auction/list.do">온라인 경매</a></li>
						<li class="active"><a href="/auction/adminAuction.do">물품 등록</a></li>
					</ul>
				</div>
			</nav>
		</section>

		<section class="sub__conts">
			<div class="container">
				<h3>경매물품 등록</h3>
				
				<p class="auction-admin__p text-center">(관리자 전용) 하단 리스트는 습득물 신고 후 권리 주장인 없이 6개월이 지난 물품 목록입니다. <br>
				경매에 등록하실 물품의 시작가를 입력하시면 온라인 경매 페이지에 업로드됩니다.</p>

				<ul class="stuff-list ul--auction-amin row align-items-stretch">
					<c:forEach items="${aList }" var="auction">
						<li class="col-3">
							<a href="javascript:void(0);">
								<figure>
									<c:if test="${auction.found.foundImg ne null}">
										<img src="../resources/buploadFiles/${auction.found.foundImg}" alt="경매물품이미지">
									</c:if>
								</figure>
								<p>
									<span>상품종류 : ${auction.found.foundCategory }</span>
									<span>신고자 ID : ${auction.found.userId }</span>
									<%-- <span>습득물 번호 : ${auction.found.foundPostNo }</span> --%>
									<span>신고자 이름 : ${auction.found.userName }</span>
									<span>습득자연락처 : ${auction.found.nuPhone }</span>	
									<span>습득물신고일 : ${auction.found.foundEnrollDate }</span>	
								</p>								
								<div class="auction-price-input-wrap">
									<p><strong>경매 관리</strong></p>
									<input type="text" name="auctionStartprice" placeholder="입찰시작가 입력">
									<button class="btn-basic" type="button" onclick="registAuction(this, ${auction.found.foundPostNo });">등록</button>
								</div>
								<p class="text-center">OR</p>
								<button class="btn-basic gray w-100 mt-1" type="button" onclick="hidePost(${auction.found.foundPostNo });">국고귀속/폐기(게시물 숨김)</button>
							</a>
						</li>
					</c:forEach>
				</ul>

				<ul class="ul--paging text-center">
					<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
						<li>
							<c:url var="pagination" value="/auction/adminAuction.do">
								<c:param name="page" value="${p }"></c:param>
							</c:url>
							<a href="${pagination }">${p }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</section>
	</section>

	<%@ include file="/WEB-INF/layout/inc_footer.jsp"%>

	<script>		
		// 경매등록
		function registAuction(obj, auctionNo) {
			var auctionStartprice = $(obj).siblings("input").val();
			$.ajax({
				url: "/auction/regist.do",
				type: "get",
				data: {
					"auctionNo": auctionNo,
					"auctionStartprice": auctionStartprice
				},
				success: function (data) {
					if (data == "success") {
						location.reload();
					} else {
						console.log("데이터 처리 실패");
					}
				},
				error: function () {
					alert("ajax오류!")
				}
			});
		}
		
		// 게시물 숨김처리
		function hidePost(foundNo) {
			$.ajax({
				url: "/auction/hidePost.do",
				type: "get",
				data: {
					"foundPostNo": foundNo
				},
				success: function (data) {
					if (data == "success") {
						location.reload();
					} else {
						console.log("상태 수정 처리 실패");
					}
				},
				error: function () {
					alert("ajax오류!")
				}
			});
		}

		// 현재 페이지 하이라이팅
		var pageNo = new URLSearchParams(location.search).get("page");
		if(pageNo != null) {
			$(".ul--paging li:nth-child("+ pageNo +")").addClass("on");
		} else {
			$(".ul--paging li:nth-child(1)").addClass("on");
		}
	</script>
</body>

</html>