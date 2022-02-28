<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <header id="header">
        <div class="header__top">
            <div class="container">
            	<c:if test="${not empty loginUser }">
            		<p><strong>${loginUser.user_Name }</strong>님, 반갑습니다!&#128521;</p>
            	</c:if>
                <ul>
                    <!-- 로그인 후 -->
                    <c:if test="${not empty loginUser }">
	                    <li><a href="/user/logout.do">로그아웃</a></li>
	                    <li><a href="/mypage/edit.do">마이페이지</a></li>
                    </c:if>
                    <!-- 로그인 전 -->
                    <c:if test="${empty sessionScope.loginUser }">
	                    <li><a href="/user/login.do">로그인</a></li>
	                    <li><a href="/user/join.do">회원가입</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
        <div class="header__bottom">
            <div class="container">
                <button class="btn--hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <nav class="nav--gnb">
                    <a href="/home.do" class="nav--gnb__home"><img src="/resources/img/ico_home.png"
                            alt="FIND ME HOME"></a>
                    <ul>
                        <li>
                            <a href="#">이용안내</a>
                            <ul>
                                <li><a href="/guide/definition.do">용어 정의</a></li>
                                <li><a href="/guide/step.do">처리절차</a></li>
                                <li><a href="/guide/info.do">사이트 이용안내</a></li>
                                <li><a href="/guide/center.do">관할기관 리스트</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">습득물</a>
                            <ul>
                                <li><a href="/found/report.do">습득물 신고</a></li>
                                <li><a href="/found/list.do">습득물 리스트</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">분실물</a>
                            <ul>
                                <li><a href="/lost/report.do">분실물 신고</a></li>
                                <li><a href="/lost/list.do">분실물 리스트</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">경매</a>
                            <ul>
                                <li><a href="/auction/guide.do">이용 안내</a></li>
                                <li><a href="/auction/list.do">온라인 경매</a></li>
                                <c:if test="${loginUser.user_Id eq 'admin'}">
                                	<li><a href="/auction/adminAuction.do">물품등록(관리자전용)</a></li>
                                </c:if>
                            </ul>
                        </li>
                    </ul>
                </nav>
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
    </header>