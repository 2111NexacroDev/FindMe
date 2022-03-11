<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<%@ include file="/WEB-INF/layout/inc_sub_head.jsp"%>

<body>
   <%@ include file="/WEB-INF/layout/inc_header.jsp"%>

   <section id="sub" class="auction-list">
      <section class="sub__common">
         <div class="sub__visual auction">
            <h2>온라인 경매</h2>
         </div>

         <nav class="sub__nav">
            <div class="container">
               <ul>
                  <li><a href="/auction/guide.do">이용 안내</a></li>
                  <li class="active"><a href="/auction/list.do">온라인 경매</a></li>
                        <c:if test="${loginUser.user_Id eq 'admin'}">
                           <li><a href="/auction/adminAuction.do">물품등록</a></li>
                        </c:if>
               </ul>
            </div>
         </nav>
      </section>

      <section class="sub__conts">
         <div class="container">
            <h3>온라인 경매</h3>

            <form id="auctionListForm" class="clearfix" action="/auction/dynamic.do" method="post">
               <div class="left__srch auction">
                  <input id="searchAuction" type="search" placeholder="경매물품 검색" name="auctionCategory" maxlength="100">
                  <button class="btn-basic" type="submit">검색</button>
               </div>
               <div class="right__sort">
                  <select id="orderByCondition" name="auctionOrder">
                     <option value="desc">남은시간순</option>
                     <option value="high">높은입찰가순</option>
                     <option value="low">낮은입찰가순</option>
                  </select>
               </div>
            </form>
			
			<c:set var="now" value="<%=new java.util.Date()%>" />
			<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set>
			<p class="today hidden">${today }</p>

            <ul class="stuff-list ul--auction row align-items-stretch">
               <c:forEach items="${aList }" var="auction">
                  <li class="col-3">
                     <span class="auction__time-limit">${auction.auctionEndDate}</span>
                     <a href="javascript:void(0);" onclick="showDetail(${auction.auctionNo });">
                        <figure>
                           <c:if test="${auction.auctionImg ne null}">
                              <img src="../resources/buploadFiles/${auction.auctionImg}" alt="경매물품이미지">
                           </c:if>
                        </figure>
                        <p>
                           <span>상품종류 : ${auction.auctionCategory }</span>
                           <span>경매시작날짜 : ${auction.auctionBeginDate }</span>
                           <span>현재 입찰최고가 : ${auction.auctionMaxprice }원</span>
                        </p>
                     </a>
                     <button type="button" onclick="likePost(this, ${auction.auctionNo });"><span>♡</span>
                        <strong>${auction.auctionFavor }</strong></button>
                  </li>
               </c:forEach>
            </ul>

            <ul class="ul--paging text-center">
               <c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
                  <li>
                     <c:url var="pagination" value="/auction/list.do">
                        <c:param name="page" value="${p }"></c:param>
                     </c:url>
                     <a href="${pagination }">${p }</a>
                  </li>
               </c:forEach>
            </ul>
         </div>
      </section>
   </section>

   <div class="popup-wrap popup--post">
      <div class="popup--detail">
         <button class="popup--post__close">
            <span></span>
            <span></span>
         </button>
         <div class="post-status">
            <c:if test="${loginUser.user_Id eq 'admin'}">
               <select id="selectPostStatus">
                  <option value="1">보임</option>
                  <option value="2">숨김</option>
               </select>
               <button class="btn-basic gray" name="post-status" >상태수정</button>
            </c:if>
         </div>
         <ul class="post-detail">
            <li>
               <figure>
                  <c:if test="${auction.auctionImg ne null}">
                     <img src="../resources/img/noimage.jpg" alt="경매물품이미지">
                  </c:if>
               </figure>
            </li>
            <li><strong>상품종류 : </strong> <span></span></li>
            <li><strong>경매시작가 : </strong> <span></span></li>
            <li><strong>입찰단위 : </strong> <span></span></li>
            <li><strong>최고입찰가 : </strong> <span></span></li>
            <li><strong>경매 종료일 : </strong> <span></span></li>
            <li><a href="../resources/img/delivery_fee.PNG" target="_blank">예상배송비 확인하기</a></li>
         </ul>
         <c:if test="${not empty loginUser }">
            <div class="popup__btns-wrap text-center">
               <button class="btn-basic" type="button">입찰 신청</button>
            </div>
         </c:if>
         <c:if test="${empty sessionScope.loginUser }">
            <p>※ 비회원은 경매기능을 이용할 수 없습니다. <br>회원 가입 후 이용해주세요.</p>
         </c:if>
      </div>
   </div>

   <div class="popup-wrap popup--price" style="display: none;">
      <div class="popup_msg">
         <p>
            지금 입찰 시 최고 입찰가 <span class="price--max">95000</span>원에<br>
            입찰 단위 <span class="price--unit">5000</span>원을 더한<br>
            <span class="price--bid">100000</span>원에 입찰이 진행됩니다.<br><br>
            <strong>신청하시겠습니까?</strong>
         </p>
         <button class="btn--bidding" type="button">확인</button>
         <button class="btn--close" type="button">취소</button>
      </div>
   </div>

   <%@ include file="/WEB-INF/layout/inc_footer.jsp"%>

   <script>   
		// 다중조건 검색
		function dynamicFunc() {
			var auctionCategory = $("#searchAuction").val();
			var auctionOrder = $("#orderByCondition").val();
			$.ajax({
				url: "/auction/dynamic.do",
				type: "post",
				async: false,
				data: {
					"auctionCategory": auctionCategory,
					"auctionOrder": auctionOrder,
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
   
   	  // 디데이 체크
      $(".auction__time-limit").each(function(i){
    	 var endDate = new Date($(this).text());
    	 var today = new Date($(".today").text());
    	 var dateDiff = Math.ceil((endDate.getTime()-today.getTime())/(1000*3600*24));
    	 console.log("끝 :"+endDate, "오늘 :"+today, dateDiff);
         if(dateDiff > 0) {
            $(this).text("D - " + dateDiff);
         } else {
            $(this).text("경매종료");
            $(this).css("opacity",".7");
            $(this).siblings("a").attr("onclick","").css("opacity",".5");
            $(this).siblings("button").attr("onclick","").css("opacity",".5");
         }
      });

      // 게시물 상세보기
      function showDetail(auctionNo) {
         $(".popup--post").stop().fadeIn(300);
         var userId = "${loginUser.user_Id}";
         $.ajax({
            url: "/auction/auctionDetailView.do",
            type: "get",
            data: {
               "auctionNo": auctionNo
            },
            success: function (data) {
               if (data["auctionImg"] != null) {
                  $(".post-detail>li:nth-child(1) img").show();
                  $(".post-detail>li:nth-child(1) img").attr("src", "../resources/buploadFiles/" + data[
                     "auctionImg"]);
               } else {
                  $(".post-detail>li:nth-child(1) img").hide();
               }
               $(".post-detail>li:nth-child(2) span").text(data["auctionCategory"]);
               $(".post-detail>li:nth-child(3) span").text(data["auctionStartprice"] + "원");
               $(".post-detail>li:nth-child(4) span").text(parseInt(data["auctionStartprice"]) * 0.1 + "원");
               $(".post-detail>li:nth-child(5) span").text(data["auctionMaxprice"] + "원");
               $(".post-detail>li:nth-child(6) span").text(data["auctionEndDate"]);
               $(".popup__btns-wrap button").attr("onclick", "viewPrice()");
               $(".price--max").text(data["auctionMaxprice"]);
               $(".price--unit").text(parseInt(data["auctionStartprice"]) * 0.1);

               var bidPrice = data["auctionMaxprice"] + (data["auctionStartprice"] * 0.1);
               $(".price--bid").text(data["auctionMaxprice"] + bidPrice);
               $(".btn--bidding").attr("onclick", "goBid(" + auctionNo + "," + bidPrice + ",'" + userId + "')");
               $(".post-status button").attr("onclick", "hidePost(" + auctionNo +")");
               onclick="hidePost(${auction.found.foundPostNo });"
            },
            error: function () {
               alert("ajax 에러!");
            }
         });
         return false;
      }

      // 가격 안내창 열기
      function viewPrice() {
         $(".popup--price").stop().fadeIn(300);
      }

      // 입찰
      function goBid(auctionNo, bidPrice, userId) {
         $.ajax({
            url: "/auction/applyBid.do",
            type: "get",
            data: {
               "auctionNo": auctionNo,
               "auctionMaxprice": bidPrice,
               "userId": userId
            },
            success: function (data) {
               if (data == "success") {
                  alert("입찰 성공!");
                  location.href = "/auction/list.do";
               } else {
                  console.log("데이터 처리 실패");
               }
            },
            error: function () {
               alert("ajax오류!")
            }
         });
      }

      // 좋아요
      function likePost(obj, auctionNo) {
         var auctionFavor = $(obj).children("strong").text();
         $.ajax({
            url: "/auction/likePost.do",
            type: "get",
            data: {
               "auctionNo": auctionNo,
               "auctionFavor": auctionFavor
            },
            success: function (data) {
               if (data == "success") {
                  $(obj).children("strong").text(parseInt($(obj).children("strong").text()) + 1);
                  $(obj).children("span").text("♥");
               } else {
                  console.log("데이터 처리 실패");
               }
            },
            error: function () {
               alert("ajax오류!")
            }
         });
      }

      // x버튼 클릭 시 닫기
      $(".btn--close").on("click", function () {
         $(".popup--price").stop().fadeOut(300);
      });

      // 배경 클릭 시 닫기 
      $(".popup--post").mouseup(function (e){
         var popupBody = $(".popup--detail");
         if(popupBody.has(e.target).length === 0){
            $(this).stop().fadeOut(300);
         }
      });

      // 배경 클릭 시 닫기 
      $(".popup--price").mouseup(function (e){
         var popupBody = $(".popup--msg");
         if(popupBody.has(e.target).length === 0){
            $(this).stop().fadeOut(300);
         }
      });
      
      //숨김처리
      function hidePost(foundNo) {
         var status = $("#selectPostStatus").val();
         if(status == 2) {            
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
      }
   </script>
</body>

</html>