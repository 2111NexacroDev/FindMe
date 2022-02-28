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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../resources/js/common.js" async></script>
</head>
<body id="mypage">
   <%@ include file="/WEB-INF/layout/inc_mypage.jsp" %>
   
    <section class="sub__conts delivery">
            <div class="container">            
                <h3>택배 서비스 신청 내역</h3>  
                   
               <nav class="sub__nav--depth3">
                   <ul>
                       <li class="active"><button type="button">택배 서비스 신청 내역</button></li>
                   </ul>
               </nav>

               <p class="delivery__p mt-5">※ 택배사는 우체국택배입니다.</p>
               
               <table class="delivery__table mt-3">
               		<c:if test="${user.user_Id eq 'admin'}">
	                    <tr>
	                       <th>택배 번호</th>
	                       <th>회원 아이디</th>
	                       <th>신청일</th>
	                       <th>신청 물품</th>
	                       <th>운송장 번호</th>
	                    </tr>
	                    <c:choose>
	                    	<c:when test="${not empty dList}">
			                    <c:forEach var="delivery" items="${dList}">
			                       <tr>
			                        <td>${delivery.deliveryNo}</td>
			                        <td>${delivery.userId}</td>
			                        <td>${delivery.deliveryDate}</td>
			                          <td>${delivery.productCategory}</td>
			                              <td>
			                              <form action="/delivery/waybillNoAdd.do" method="post">
			                                  <input type="hidden" name="deliveryNo" value="${delivery.deliveryNo }">
			                                  <input type="text" name="waybillNo" id="waybillNo">
			                                  <input type="submit" value="입력" class="btn-basic">
			                               </form>
			                              </td>              
			                       </tr>
			                    </c:forEach>
		                    </c:when>
		                	<c:otherwise><tr><td colspan="5">해당되는 정보가 없습니다.</td></tr></c:otherwise>
	                    </c:choose>
	                 </c:if>
	                 <c:if test="${user.user_Id ne 'admin'}">
	                    <tr>
	                       <th>신청일</th>
	                       <th>신청 물품</th>
	                       <th>운송장 번호</th>
	                    </tr>
		               	<c:choose>
		                	<c:when test="${not empty dList}">
	                    		<c:forEach var="delivery" items="${dList}">
			                       <tr>
			                        <td>${delivery.deliveryDate}</td>
			                        <td>${delivery.productCategory}</td>
			                          <td><a href="http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=(13자리)" target="_blank">${delivery.waybillNo}</a></td>
			                       </tr>
	                    		</c:forEach>
			          		</c:when>
			          		<c:otherwise><tr><td colspan="3">해당되는 정보가 없습니다.</td></tr></c:otherwise>
		          		</c:choose>
                 	</c:if>
              </table>
            </div>
        </section>
</body>
</html>