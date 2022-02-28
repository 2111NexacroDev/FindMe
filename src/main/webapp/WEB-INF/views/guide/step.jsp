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

    <section id="sub" class="step"><!-- class로 페이지 제목(url) -->

        <section class="sub__common">
            <div class="sub__visual">
                <h2>이용 안내</h2>
            </div>
            
            <nav class="sub__nav">
                <div class="container">
	                <ul>
	                    <li><a href="/guide/definition.do">용어 정의</a></li>
	                    <li class="active"><a href="/guide/step.do">처리절차</a></li>
	                    <li><a href="/guide/info.do">사이트 이용안내</a></li>
	                    <li><a href="/guide/center.do">관할기관 리스트</a></li>
	                </ul>
                </div>
            </nav>
        </section>

        <section class="sub__conts">
            <div class="container">
                <h3>처리절차</h3>
                
                <figure class="step__figure text-center">
                    <img src="../resources/img/step.jpg" alt="분실물신고-센터보관시 바로 반환/습득물신고-센터보관-6개월 내 분실자 없을 시 경매-낙찰, 국고 귀속, 혹은 폐기">
                </figure>
            </div>
        </section>
    </section>    
    
	<%@ include file="/WEB-INF/layout/inc_footer.jsp" %>
</body>
</html>