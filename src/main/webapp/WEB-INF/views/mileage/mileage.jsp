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
	<script src="../resources/js/sub.js"></script>
</head>
<body id="mypage">
	<%@ include file="/WEB-INF/layout/inc_mypage.jsp" %>
	
    <section id="sub" class="mileage text-center">
        <section class="sub__conts">
            <div class="container">            
                <h3>마일리지 적립내역</h3>  
                   
	            <div class="all_mileage">총 마일리지 : ${allMileage} P</div>
	             
	            <nav class="sub__nav--depth3">
	                <ul>
	                    <li class="active"><button type="button">적립 내역</button></li>
	                    <li><button type="button">사용 내역</button></li>
	                </ul>
	            </nav>
	            
	            <table class="mileage__table active">
		            <colgroup>
	    				<col width="20%" />
	    				<col width="50%" />
	    				<col width="30%" />
		            </colgroup>
	        		<tr>
	        			<th>적립일</th>
	        			<th>적립된 마일리지</th>
	        			<th>내용</th>
	        		</tr>
					<c:forEach var="mList" items="${mList}">
					<c:if test="${mList.mileageType eq '적립' }">
		        		<tr>
							<td>${mList.mileageDate}</td>
							<td>${mList.mileage} P</td>
							<td>${mList.mileageType}</td>
		        		</tr>
					</c:if>
					</c:forEach>
	        	</table>
	        	
	        	<table class="mileage__table">
		        	<colgroup>
	    				<col width="20%" />
	    				<col width="50%" />
	    				<col width="30%" />
		            </colgroup>
	        		<tr>
	        			<th>사용일</th>
	        			<th>사용된 마일리지</th>
	        			<th>내용</th>
	        		</tr>
	        		<c:forEach var="mList" items="${mList}">
					<c:if test="${mList.mileageType eq '사용' }">
		        		<tr>
							<td>${mList.mileageUseDate}</td>
							<td>${mList.mileage} P</td>
							<td>${mList.mileageType}</td>
		        		</tr>
					</c:if>
					</c:forEach>
	        	</table>

				<button class="btn-basic modal_btn">마일리지 사용</button>
            </div>
        </section>
       	<div class="modal">
       		<div class="modal_content">
				<button class="popup--post__close modal_closeBtn">
					<span></span><span></span>
				</button>
       			<h4>마일리지 사용 신청</h4>
       			<form action="/mileage/useMileage.do" method="post">
	       			<h5>사용할 마일리지</h5>
	       			<input type="text" name="mileage">
	       			<h5>교통비 감면받을 월 선택</h5>
	       			<select name="mileageUseDate">
	       				<option value="">월 선택</option>
	       				<option value="22/03/01">3월</option>
	       				<option value="22/04/01">4월</option>
	       				<option value="22/05/01">5월</option>
	       			</select>
       				<button class="btn-basic" type="submit">신청</button>
       			</form>
       		</div>
      		</div>
    </section>
    <script>
    	$(function() {
    		$(".modal_btn").click(function() {
    			$(".modal").fadeIn();
    		});
    		$(".modal_closeBtn").click(function() {
    			$(".modal").fadeOut();
    		});
    	});
//     	$("#aSubmit").on("click", function() {
//     		var useMileage = $("#useMileage").val();
//     		$.ajax({
//     			url : "/mileage/userMileage.do",
//     			type : "post",
//     			data : {"useMileage" : Mileage},
//     			success : function(data) {
//     				if(data == "success") {
//     					$("#userMileage").val("");
//     				}else {
//     					alert("마일리지 사용 실패");
//     				}
//     			},
//     			error : function() {
//     				alert("ajax 실패!");
//     			}
//     		});
//     	});
    </script>
</body>
</html>
