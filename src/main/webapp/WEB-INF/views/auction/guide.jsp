<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@ include file="/WEB-INF/layout/inc_sub_head.jsp"%>

<body>
	<%@ include file="/WEB-INF/layout/inc_header.jsp"%>

	<section id="sub" class="guide">
		<section class="sub__common">
			<div class="sub__visual auction">
				<h2>온라인 경매</h2>
			</div>

			<nav class="sub__nav">
				<div class="container">
					<ul>
						<li class="active"><a href="/auction/guide.do">이용 안내</a></li>
						<li><a href="/auction/list.do">온라인 경매</a></li>
                        <c:if test="${loginUser.user_Id eq 'admin'}">
                        	<li><a href="/auction/adminAuction.do">물품등록</a></li>
                        </c:if>
					</ul>
				</div>
			</nav>
		</section>

		<section class="sub__conts">
			<div class="container">
				<h3>이용 안내</h3>
				<h4>경매 참여 시 주의사항 안내</h4>
				<ul class="guide__ul">
					<li>
						1. FIND ME의 경매 대상은 습득물 신고 후 주인이 나타나지 않은 채 <strong>6개월이 지난 물품</strong>입니다.
						[온라인 경매] 메뉴에서 구매를 원하시는 물품의 정보를 확인하세요.
					</li>
					<li>2. 물품은 기간 내 가장 높은 입찰가를 제시한 회원에게 낙찰됩니다.</li>
					<li>3. 입찰하신 물품이 낙찰될 경우, 마이페이지에서 확인하실 수 있으며 경매 완료 시점 24시간 내 결제를 완료하셔야 구매 처리됩니다.</li>
					<li>4. 낙찰 물품을 <strong class="caution">낙찰 종료일 다음날 내에 결제하지 않으실 경우 무효처리</strong>되니 완료일에 주의 부탁드립니다.</li>
					<li>5. 교환/환불이 불가한 분실물의 특성을 감안하시어 신중한 구매를 추천드립니다.</li>
				</ul>

				<h4>경매 참여 절차</h4>
				<ul class="guide__step row text-center">
					<li class="col-4">
						<figure>
							<img src="../resources/img/ico_guide_01.png" alt="아이콘">
							<figcaption>1. 구매물품 선택</figcaption>
						</figure>
					</li>
					<li class="col-4">
						<figure>
							<img src="../resources/img/ico_guide_02.png" alt="아이콘">
							<figcaption>2. 입찰하기</figcaption>
						</figure>
					</li>
					<li class="col-4">
						<figure>
							<img src="../resources/img/ico_guide_03.png" alt="아이콘">
							<figcaption>3. 낙찰</figcaption>
						</figure>
					</li>
					<li class="col-4">
						<figure>
							<img src="../resources/img/ico_guide_04.png" alt="아이콘">
							<figcaption>4. 물품 대금 입금</figcaption>
						</figure>
					</li>
					<li class="col-4">
						<figure>
							<img src="../resources/img/ico_guide_05.png" alt="아이콘">
							<figcaption>5. 배송</figcaption>
						</figure>
					</li>
					<li class="col-4">
						<figure>
							<img src="../resources/img/ico_guide_06.png" alt="아이콘">
							<figcaption>6. 경매 완료</figcaption>
						</figure>
					</li>
				</ul>
			</div>
		</section>
	</section>

	<%@ include file="/WEB-INF/layout/inc_footer.jsp"%>
</body>

</html>