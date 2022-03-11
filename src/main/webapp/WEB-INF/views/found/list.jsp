<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<section id="sub" class="list list--found">
		<section class="sub__common">
			<div class="sub__visual found">
				<h2>습득물</h2>
			</div>

			<nav class="sub__nav">
				<div class="container">
					<ul>
						<li><a href="/found/report.do">습득물 신고</a></li>
						<li class="active"><a href="/found/list.do">습득물 리스트</a></li>
					</ul>
				</div>
			</nav>
		</section>

		<section class="sub__conts">
			<div class="container">
				<h3>습득물 리스트</h3>
				<form id="foundListForm" class="clearfix" action="/found/dynamic.do" method="post">
					<div class="left__srch">
						<select name="subway" id="searchSubway">
							<option value="1">1호선</option>
							<option value="2">2호선</option>
							<option value="3">3호선</option>
							<option value="4">4호선</option>
							<option value="5">5호선</option>
							<option value="6">6호선</option>
							<option value="7">7호선</option>
							<option value="8">8호선</option>
							<option value="9">9호선</option>
						</select>
						<input type="search" name="keyword" placeholder="해시태그검색" id="searchHash">
						<button class="btn-basic" type="submit">검색</button>
						<p class="network-wrap"><img src="../resources/img/hashtagnetwork.jpg" alt="해시태그 네트워크"></p>
					</div>

					<div class="right__sort">	
						<select name="date" id="date_sel">
							<option value="DESC">최신순</option>
							<option value="ASC">느린순</option>
						</select>
						<select name="process" id="process_sel">
							<option value="보관중">보관중</option>
							<option value="처리완료">처리완료</option>
						</select>
					</div>

					<ul class="left__subway" id="searchSubwayBtns">
						<li class="active"><a href="/found/list.do">ALL</a>
						<li><button type="button" value="1">1</button></li>
						<li><button type="button" value="2">2</button></li>
						<li><button type="button" value="3">3</button></li>
						<li><button type="button" value="4">4</button></li>
						<li><button type="button" value="5">5</button></li>
						<li><button type="button" value="6">6</button></li>
						<li><button type="button" value="7">7</button></li>
						<li><button type="button" value="8">8</button></li>
						<li><button type="button" value="9">9</button></li>
					</ul>
				</form>


				<ul class="stuff-list row align-items-stretch">
					<!-- JSTL 반복 출력 -->
					<c:forEach items="${fList }" var="found">
						<li class="col-3">
							<a href="javascript:void(0);" onclick="showDetail(${found.foundPostNo });">
								<figure>
									<c:if test="${found.foundImg ne null}">
										<img src="../resources/buploadFiles/${found.foundImg}" alt="습득물품이미지">
									</c:if>
								</figure>
								<p>작성자: ${found.userName }</p>
								<p>습득노선: <b class="lineNo">${found.foundStation }</b>호선</p>
								<p>습득날짜: ${found.foundDate }</p> <br>
								<p>해시태그: ${found.foundHashtag }</p>
							</a>
						</li>
					</c:forEach>
					<!-- 반복 출력 -->
				</ul>
				<ul class="ul--paging text-center">
				<c:if test="${pi.startNavi ne 1 }">
					<a href="/found/list.do?page=${pi.startNavi -1 }">&lt;</a>
				</c:if>
					<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
						<li <c:if test="${pi.currentPage eq p }">class="on"</c:if>>
							<c:url var="pagination" value="/found/list.do">
								<c:param name="page" value="${p }"></c:param>
							</c:url>
							<a href="${pagination }">${p }</a>
						</li>
					</c:forEach>
				<c:if test="${pi.endNavi < pi.maxPage && pi.currentPage ne maxPage }">
					<a href="/found/list.do?page=${pi.endNavi + 1 }">&gt;</a>
				</c:if>
				</ul>
			</div>
		</section>
	</section>

	<div class="popup-wrap popup--post">
		<div class="popup--detail">
			<button class="popup--post__close">
				<span></span> <span></span>
			</button>
			<!-- 관리자에게만 표출함 -->
			<div class="post-status">
				<c:if test="${loginUser.user_Id eq 'admin'}">
					<select id="selectPostStatus">
						<option value="1">보임</option>
						<option value="2">숨김</option>
					</select>
					<button class="btn-basic gray" name="post-status">상태수정</button>
				</c:if>
			</div>
			<!-- 관리자에게만 표출함 끝 -->
			<ul class="post-detail">
				<li>
					<figure>
						<img src="../resources/img/img_lost.png" alt="분실물이미지">
					</figure>
				</li>
				<!-- 일반 사용자일 경우 -->
				<c:if test="${loginUser.user_Id ne 'admin'}">
					<li><strong>처리상태 : </strong> <span>내용</span></li>
				</c:if>
				<!-- // 일반 사용자일 경우 -->
				<!-- 관리자일 경우 -->
				<c:if test="${loginUser.user_Id eq 'admin'}">
					<li>
						<strong>처리상태 : </strong>
						<select name="">
							<option>보관중</option>
							<option>처리완료</option>
						</select>
						<button class="btn-basic gray" name="found-status">수정</button>
					</li>
				</c:if>
				<!-- // 관리자일 경우 -->
				<li><strong>습득물종류 : </strong> <span>내용</span></li>
				<li><strong>작성자 : </strong> <span>내용</span></li>
				<li><strong>습득노선 : </strong> <span>내용</span></li>
				<li><strong>습득날짜 : </strong> <span>내용</span></li>
				<li class="mt-3"><strong>해시태그</strong> <span>#입력 #내용</span></li>
			</ul>
			<div class="popup__btns-wrap text-center">
				<c:if test="${not empty loginUser }">
					<button class="btn-basic" name="">택배 서비스 신청</button>
				</c:if>
				<button class="btn-basic gray" name="info-status">수정</button>
				<!-- 유저 게시글 수정 버튼 -->
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/layout/inc_footer.jsp"%>

	<script>
		function dynamicFunc() {
			var keyword = $("#searchHash").val();
			var subway = $("#searchSubway").val();
			var date = $("#date_sel").val();
			var process = $("#process_sel").val();
			$.ajax({
				url: "/found/dynamic.do",
				type: "post",
				async: false,
				data: {
					"keyword": keyword,
					"subway": subway,
					"date": date,
					"process": process
				},
				success: function (data) {
					if(data == "fail") {
						alert("검색결과가 없습니다.");
					}
				},
				error: function () {
				}
			});
		}

		$("#searchSubwayBtns button").on("click", function(){			
			var lineNum = $(this).val();
			$("#searchSubway").val(lineNum).prop("selected", true);
			$("#foundListForm").submit();
		});

		function showDetail(foundPostNo) {
			$(".popup--post").stop().fadeIn(300);
			var userId = "${loginUser.user_Id}";
			$.ajax({
				url: "/found/foundDetailView.do",
				type: "get",
				data: {
					"foundPostNo": foundPostNo
				},
				success: function (data) {
					if (data["foundImg"] != null) {
						$(".post-detail>li:nth-child(1) img").show();
						$(".post-detail>li:nth-child(1) img").attr("src", "../resources/buploadFiles/" + data[
							"foundImg"]);
					} else {
						$(".post-detail>li:nth-child(1) img").hide();
					}
					$(".post-detail>li:nth-child(2) span").text(data["foundProcessingStatus"]);
					$(".post-detail>li:nth-child(3) span").text(data["foundCategory"]);
					$(".post-detail>li:nth-child(4) span").text(data["userName"]);
					$(".post-detail>li:nth-child(5) span").text(data["foundStation"]);
					$(".post-detail>li:nth-child(6) span").text(data["foundDate"]);
					$(".post-detail>li:nth-child(7) span").text(data["foundHashtag"]);
					$(".popup__btns-wrap button:nth-child(1)").attr("onclick", "goRequest("+foundPostNo+",'" +userId + "')");
					$(".popup__btns-wrap button:nth-child(2)").attr("onclick", "foundModify("+foundPostNo+",'" +userId + "')");
				},
				error: function () {
					alert("ajax 에러!");
				}
			});
			return false;
		}

		function goRequest(foundPostNo, userId) {
			$.ajax({
				url: "/found/requestDelivery.do",
				type: "get",
				data: {
					"userId": userId,
					"foundPostNo": foundPostNo
				},
				success: function () {
					console.log("성공")
				},
				error: function () {
					console.log("실패");
				}
			});
		}
		
		function foundModify(foundPostNo, userId) {
			location.href="/found/modify.do?foundPostNo="+foundPostNo;
		}

		$(function(){
			if(location.href.match("found/dynamic.do")) {
				$("#searchSubwayBtns li").removeClass("active");
				var lineNo = parseInt($(".stuff-list li:first-child .lineNo").text());
				$("#searchSubway").val(lineNo).prop("selected", true);
				$("#searchSubwayBtns li:nth-child("+ (lineNo+1) +")").addClass("active");
			}
			
			$(".left__srch").mouseenter(function(){$(".left__srch .network-wrap").stop().fadeIn();});
			
			$(".left__srch").mouseleave(function(){$(".left__srch .network-wrap").stop().fadeOut();});
		});


		// 배경 클릭 시 닫기 
		$(".popup--post").mouseup(function (e){
			var popupBody = $(".popup--detail");
			if(popupBody.has(e.target).length === 0){
				$(this).stop().fadeOut(300);
			}
		});
	</script>
</body>

</html>