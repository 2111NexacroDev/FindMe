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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../resources/js/common.js" async></script>
</head>
<body>
	<%@ include file="/WEB-INF/layout/inc_header.jsp" %>

    <section id="sub" class="definition">
        <section class="sub__common">
            <div class="sub__visual">
                <h2>이용 안내</h2>
            </div>
            
            <nav class="sub__nav">
                <div class="container">
	                <ul>
	                    <li class="active"><a href="/guide/definition.do">용어 정의</a></li>
	                    <li><a href="/guide/step.do">처리절차</a></li>
	                    <li><a href="/guide/info.do">사이트 이용안내</a></li>
	                    <li><a href="/guide/center.do">관할기관 리스트</a></li>
	                </ul>
                </div>
            </nav>
        </section>

        <section class="sub__conts">
            <div class="container">
                <h3>용어 정의</h3>
                
                <figure class="definition__figure text-center">
                    <img src="../resources/img/img_lost.png" alt="분실물/습득물 용어정의">
                </figure>

                <div class="definition__txt row align-items-stretch mt-5">
                    <div class="col-6">
                    	<h4 class="text-center">분실물</h4>
                    	<p>
                    	<strong>철도 내에서</strong>
						누군가 자기도 모르는 사이에 잃어버린 물건을, <br>
						잃어버린 사람 본인이 홈페이지를 통해 <br>
						또는, 역내 분실물 센터에 직접 방문해 분실물 신고를 한 물건
                    	</p>
                    </div>
                    <div class="col-6">
                    	<h4 class="text-center">습득물</h4>
                    	<p>
						<strong>철도 내에서</strong>
						주인을 알 수 없는 물건을 누군가 주워서, <br>
						분실물 센터 내 절차에 따라 습득물 신고를 한 물건
                    	</p>
                    </div>
                </div>
            </div>
        </section>
    </section>    
    
	<%@ include file="/WEB-INF/layout/inc_footer.jsp" %>
</body>
</html>