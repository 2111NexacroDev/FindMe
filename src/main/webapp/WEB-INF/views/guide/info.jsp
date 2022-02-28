<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FIND ME</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/fonts.css">
    <link rel="stylesheet" href="../resources/css/common.css">
    <link rel="stylesheet" href="../resources/css/sub.css">
    <!-- CSS파일은 이 위에 각자 뒤에 이니셜 붙여서 생성해주세요 예)sub_kjs.css -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../resources/js/common.js" async></script>
</head>
<body>
	<%@ include file="/WEB-INF/layout/inc_header.jsp" %>

    <section id="sub" class="info"><!-- class로 페이지 제목(url) -->

        <section class="sub__common">
            <div class="sub__visual">
                <h2>이용 안내</h2>
            </div>
            
            <nav class="sub__nav">
                <div class="container">
	                <ul>
	                    <li><a href="/guide/definition.do">용어 정의</a></li>
	                    <li><a href="/guide/step.do">처리절차</a></li>
	                    <li class="active"><a href="/guide/info.do">사이트 이용안내</a></li>
	                    <li><a href="/guide/center.do">관할기관 리스트</a></li>
	                </ul>
                </div>
            </nav>
        </section>

        <section class="sub__conts">
            <div class="container">
                <h3>사이트 이용안내</h3>             
                <h4>※ <strong>마일리지</strong>란 무엇입니까?</h4>
                <p>
                    본 사이트에 회원 가입한 사용자에 한해, 습득 신고로 분실물을 찾아주시는데 공헌하실 경우 500마일리지를 지급합니다.
                    6개월간 주인을 찾지 못했으나 경매 입찰 가능한 물품일 경우, 습득 기여도가 인정되어 낙찰가의 10%를 마일리지로 받으실 수 있습니다.
                    마일리지는 코레일 교통비 감면을 위한 목적으로 사용가능하며, 마이페이지에서 사용 신청을 하실 수 있습니다.
                </p>
                <h4>※ <strong>택배 서비스</strong>란 무엇입니까?</h4> 
                <p>
                    본 사이트에 회원 가입한 사용자에 한해 습득물 중 본인의 분실물이 있을 경우, 간단한 확인을 거쳐 바로 택배로 받아보실 수 있습니다.
                </p>
            </div>
        </section>
    </section>    
    
	<%@ include file="/WEB-INF/layout/inc_footer.jsp" %>
</body>
</html>