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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/fonts.css">
    <link rel="stylesheet" href="../resources/css/common.css">
    <link rel="stylesheet" href="../resources/css/sub.css">
    <link rel="stylesheet" href="../resources/css/foundList.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../resources/js/common.js" async></script>
</head>
<body id="mypage">
	<%@ include file="/WEB-INF/layout/inc_mypage.jsp" %>
	
    <section id="sub" class="foundList">

        <section class="sub__conts">
            <div class="container">            
                <h3>습득물 신고 이력</h3>  
                   
	            <nav class="sub__nav--depth3">
	                <ul>
	                    <li class="active"><button type="button">신고 이력</button></li>
	                </ul>
	            </nav>
	            
	            <table class="foundList__table">
	        		<tr>
	        			<th>모델코드</th>
	        			<th>#해시태그</th>
	        			<th>습득장소</th>
	        			<th>습득일</th>
	        			<th>보관장소</th>
	        			<th>처리여부<br>(보관중/처리완료)</th>
	        		</tr>
	        		<c:choose>
	        			<c:when test="${not empty fList}">
			        		<c:forEach var="fList" items="${fList}">
				        		<tr>
									<td>${fList.foundPostNo}</td>
									<td>${fList.foundHashtag}</td>
									<td>${fList.foundStation}호선</td>
									<td>${fList.foundDate}</td>
									<td>${fList.foundStorageCenter}</td>
									<td>${fList.foundProcessingStatus}</td>
				        		</tr>
				        	</c:forEach>
				        </c:when>
				        <c:otherwise><tr><td colspan="6">해당되는 정보가 없습니다.</td></tr></c:otherwise>
					</c:choose>
	        	</table>
	        	
            </div>
        </section>
    </section>
</body>
</html>