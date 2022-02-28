<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="header__bottom">
	<div class="container">
        <a class="header__logo" href="/home.do">
        	<span>F</span>
        	<span>I</span>
        	<span>N</span>
        	<span>D</span>
        	 
        	<span>M</span>
        	<span>E</span>
        </a>
	</div>
</div>

<nav class="nav--mypage">
	<a href="../index.jsp" class="nav--mypage__home"><img src="../resources/img/ico_home.png" alt="FIND ME HOME"></a>
	<h2>마이페이지</h2>
	<ul>
	    <li><a href="/mypage/edit.do">회원 정보 수정</a></li>
	    <li><a href="/mypage/foundList.do">습득물 신고 이력</a></li>
	    <li><a href="/mypage/lostList.do">분실물 신고 이력</a></li>
	    <li><a href="/mypage/mileage.do">마일리지</a></li>
	    <li><a href="/mypage/delivery.do">택배 서비스 신청 내역</a></li>
	    <!-- 관리자에게만 -->
<%-- 	    <c:if test="${loginUser.user_Id eq 'admin'}"> 
	    	<li><a href="/mypage/auctionListUsers.do">경매 낙찰 내역</a></li>
	    </c:if> --%>
	    <!-- 일반회원에게만 -->
<%-- 	    <c:if test="${loginUser.user_Id ne 'admin'}"> 
	    	<li><a href="/mypage/auctionList.do">경매 낙찰 내역</a></li>
	    </c:if> --%>
	    <li><a href="/mypage/auctionList.do">경매 낙찰 내역</a></li>
	    <li><a href="/mypage/withdraw.do">회원 탈퇴</a></li>
	</ul>
</nav>