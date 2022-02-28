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

    <section id="sub" class="center"><!-- class로 페이지 제목(url) -->

        <section class="sub__common">
            <div class="sub__visual">
                <h2>이용 안내</h2>
            </div>
            
            <nav class="sub__nav">
                <div class="container">
	                <ul>
	                    <li><a href="/guide/definition.do">용어 정의</a></li>
	                    <li><a href="/guide/step.do">처리절차</a></li>
	                    <li><a href="/guide/info.do">사이트 이용안내</a></li>
	                    <li class="active"><a href="/guide/center.do">관할기관 리스트</a></li>
	                </ul>
                </div>
            </nav>
        </section>

        <section class="sub__conts">
            <div class="container">
                <h3>관할기관 리스트</h3>
                <table class="center__table" summary="지역, 유실물보관장소, 연락처, 지도보기">
					<caption>코레일 전국 유실물 보관장소 안내</caption>
					<thead>
						<tr>
							<th scope="col" class="first">지역</th>
							<th scope="col">유실물보관장소</th>
							<th scope="col">연락처</th>
						</tr>
					</thead>
					<tbody>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">강릉역(한국철도공사)</td>
							<td>033-520-8377</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">강촌역(한국철도공사)</td>
							<td>033-261-7897</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">백양리역(한국철도공사)</td>
							<td>033-262-8827</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">굴봉산역(한국철도공사)</td>
							<td>033-263-7878</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">김유정역(한국철도공사)</td>
							<td>033-261-7780</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">남춘천역(한국철도공사)</td>
							<td>033-257-7022</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">춘천역(한국철도공사)</td>
							<td>033-241-7758</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">서원주역(한국철도공사)</td>
							<td>033-749-4292</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">강원본부(한국철도공사)</td>
							<td>033-520-2284</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">옥계역(한국철도공사)</td>
							<td>033-520-2229</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">묵호항역(한국철도공사)</td>
							<td>033-520-2221</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">동해역(한국철도공사)</td>
							<td>033-520-2224</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">추암역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">묵호(위탁)역(한국철도공사)</td>
							<td>033-520-2213</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">삼척역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">도계역(한국철도공사)</td>
							<td>033-520-4588</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">신기역(한국철도공사)</td>
							<td>033-520-2258</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">동백산역(한국철도공사)</td>
							<td>033-580-4301</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">태백역(한국철도공사)</td>
							<td>033-580-4298</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">철암역(한국철도공사)</td>
							<td>033-580-4288</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">추전역(한국철도공사)</td>
							<td>033-580-4228</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">정동진역(한국철도공사)</td>
							<td>033-520-2523</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">삼척해변역(한국철도공사)</td>
							<td>033-520-2467</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">원주역(한국철도공사)</td>
							<td>033-742-6072</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">동화역(한국철도공사)</td>
							<td>033-731-2008</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">만종역(한국철도공사)</td>
							<td>033-520-8173</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">평창역(한국철도공사)</td>
							<td>033-520-8105</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">진부(오대산)역(한국철도공사)</td>
							<td>033-520-8305</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">둔내역(한국철도공사)</td>
							<td>033-520-8261</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">횡성역(한국철도공사)</td>
							<td>033-520-8201</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">쌍룡역(한국철도공사)</td>
							<td>043-641-2182</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">반곡역(한국철도공사)</td>
							<td>043-641-2488</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">선평역(한국철도공사)</td>
							<td>033-560-5271</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">별어곡역(한국철도공사)</td>
							<td>033-560-5271</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">나전역(한국철도공사)</td>
							<td>033-560-5271</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">아우라지역(한국철도공사)</td>
							<td>033-560-5271</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">영월역(한국철도공사)</td>
							<td>033-370-3321</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">석항역(한국철도공사)</td>
							<td>033-560-5278</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">신림역(한국철도공사)</td>
							<td>043-641-2502</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">고한역(한국철도공사)</td>
							<td>033-560-5276</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">민둥산역(한국철도공사)</td>
							<td>033-560-5277</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">사북역(한국철도공사)</td>
							<td>033-592-7780</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">예미역(한국철도공사)</td>
							<td>033-560-5278</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">정선역(한국철도공사)</td>
							<td>033-560-5271</td>
						</tr>
						
						<tr>
							<td class="first">강원도</td>
							<td class="alft">안인역(한국철도공사)</td>
							<td>033-520-2512</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">오산대역(한국철도공사)</td>
							<td>031-375-9354</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">여주역(한국철도공사)</td>
							<td>070-7821-5721</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">세종대왕릉역(한국철도공사)</td>
							<td>070-7821-5710</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">상갈역(한국철도공사)</td>
							<td>031-283-2112</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">신갈역(한국철도공사)</td>
							<td>031-274-3559</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">구성역(한국철도공사)</td>
							<td>031-274-4161</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">보정역(한국철도공사)</td>
							<td>031-265-7736</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">기흥역(한국철도공사)</td>
							<td>031-260-0349</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">죽전역(한국철도공사)</td>
							<td>031-896-9791</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">부발역(한국철도공사)</td>
							<td>031-631-3243</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">신둔도예촌역(한국철도공사)</td>
							<td>070-7821-5680</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">이천역(한국철도공사)</td>
							<td>070-7821-5690</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">오봉역(한국철도공사)</td>
							<td>031-461-3312</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">경마공원역(한국철도공사)</td>
							<td>02-502-7892</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">대공원역(한국철도공사)</td>
							<td>02-502-5491</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">백석역(한국철도공사)</td>
							<td>031-902-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">선바위역(한국철도공사)</td>
							<td>02-502-1356</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">정부과천청사역(한국철도공사)</td>
							<td>02-503-2265</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">광명역(한국철도공사)</td>
							<td>02-899-9270</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">군포역(한국철도공사)</td>
							<td>031-452-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">당정역(한국철도공사)</td>
							<td>031-457-0998</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">대야미역(한국철도공사)</td>
							<td>031-406-7723</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">수리산역(한국철도공사)</td>
							<td>031-391-7763</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">산본역(한국철도공사)</td>
							<td>031-391-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">소사역(한국철도공사)</td>
							<td>02-2639-3242</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">부천역(한국철도공사)</td>
							<td>032-665-7775</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">송내역(한국철도공사)</td>
							<td>032-662-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">중동역(한국철도공사)</td>
							<td>032-666-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">역곡역(한국철도공사)</td>
							<td>02-2639-3434</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">세류역(한국철도공사)</td>
							<td>031-238-3089</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">성균관대역(한국철도공사)</td>
							<td>031-293-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">정왕역(한국철도공사)</td>
							<td>031-319-7787</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">달월역(한국철도공사)</td>
							<td>031-8077-5616</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">오이도역(한국철도공사)</td>
							<td>031-319-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">월곶역(한국철도공사)</td>
							<td>031-8077-5511</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">반월역(한국철도공사)</td>
							<td>031-437-7730</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">안산역(한국철도공사)</td>
							<td>031-491-7790</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">초지역(한국철도공사)</td>
							<td>031-480-2788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">고잔역(한국철도공사)</td>
							<td>031-482-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">중앙역(한국철도공사)</td>
							<td>031-485-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">신길온천역(한국철도공사)</td>
							<td>031-491-7787</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">한대앞역(한국철도공사)</td>
							<td>031-406-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">상록수역(한국철도공사)</td>
							<td>031-407-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">범계역(한국철도공사)</td>
							<td>031-384-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">평촌역(한국철도공사)</td>
							<td>031-383-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">인덕원역(한국철도공사)</td>
							<td>031-423-0112</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">세마역(한국철도공사)</td>
							<td>031-377-7166</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">오산역(한국철도공사)</td>
							<td>031-374-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">서동탄역(한국철도공사)</td>
							<td>031-613-9581</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">의왕역(한국철도공사)</td>
							<td>031-461-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">매교역(한국철도공사)</td>
							<td>031-232-7785</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">지제역(한국철도공사)</td>
							<td>031-691-7651</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">송탄역(한국철도공사)</td>
							<td>031-666-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">진위역(한국철도공사)</td>
							<td>031-685-8313</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">서정리역(한국철도공사)</td>
							<td>031-662-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">평택역(한국철도공사)</td>
							<td>031-652-0245</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">병점역(한국철도공사)</td>
							<td>031-234-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">관악역(한국철도공사)</td>
							<td>031-471-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">석수역(한국철도공사)</td>
							<td>031-472-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">명학역(한국철도공사)</td>
							<td>031-441-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">고색역(한국철도공사)</td>
							<td>031-250-6711</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">오목천역(한국철도공사)</td>
							<td>031-250-6754</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">어천역</td>
							<td>031-250-6779</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">야목역</td>
							<td>031-250-6785</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">사리역</td>
							<td>031-250-6788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">석불역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">일신역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">매곡역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">삼산역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">파주역(한국철도공사)</td>
							<td>031-952-6264</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">도라산역(한국철도공사)</td>
							<td>031-953-3334</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">월롱역(한국철도공사)</td>
							<td>031-942-5753</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">운정역(한국철도공사)</td>
							<td>031-948-1877</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">야당역(한국철도공사)</td>
							<td>031-941-8535</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">임진강역(한국철도공사)</td>
							<td>031-354-1074</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">운천(임시승강장)역(한국철도공사)</td>
							<td>031-354-1074</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">금릉역(한국철도공사)</td>
							<td>031-348-4788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">금촌역(한국철도공사)</td>
							<td>031-946-0788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">탄현역(한국철도공사)</td>
							<td>031-911-1271</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">일산역(한국철도공사)</td>
							<td>031-976-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">풍산역(한국철도공사)</td>
							<td>031-907-9154</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">곡산역(한국철도공사)</td>
							<td>031-907-5155</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">화전역(한국철도공사)</td>
							<td>02-3158-0788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">원흥역(한국철도공사)</td>
							<td>031-965-7703</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">행신역(한국철도공사)</td>
							<td>031-979-0263</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">주엽역(한국철도공사)</td>
							<td>031-916-7799</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">대화역(한국철도공사)</td>
							<td>031-917-7799</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">문산역(경의중앙선)</td>
							<td>031-952-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">대곡역(한국철도공사)</td>
							<td>031-965-8516</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">삼송역(한국철도공사)</td>
							<td>02-371-0087</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">원당역(한국철도공사)</td>
							<td>031-965-8747</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">강매역(한국철도공사)</td>
							<td>031-938-2534</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">지축역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">능곡역(한국철도공사)</td>
							<td>031-974-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">화정역(한국철도공사)</td>
							<td>031-974-4971</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">백마역(한국철도공사)</td>
							<td>031-901-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">정발산역(한국철도공사)</td>
							<td>031-904-7799</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">마두역(한국철도공사)</td>
							<td>031-904-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">과천역(한국철도공사)</td>
							<td>02-2149-4369</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">팔당역(한국철도공사)</td>
							<td>031-576-2888</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">덕정역(한국철도공사)</td>
							<td>031-858-2788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">양동역(한국철도공사)</td>
							<td>031-772-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">가능역(한국철도공사)</td>
							<td>031-842-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">망월사역(한국철도공사)</td>
							<td>031-873-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">회룡역(한국철도공사)</td>
							<td>031-872-7744</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">의정부역(한국철도공사)</td>
							<td>031-872-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">녹양역(한국철도공사)</td>
							<td>031-878-5769</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">덕계역(한국철도공사)</td>
							<td>031-866-6792</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">용문역(한국철도공사)</td>
							<td>031-773-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">지평역(한국철도공사)</td>
							<td>031-773-7010</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">가평역(한국철도공사)</td>
							<td>031-581-2855</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">대성리역(한국철도공사)</td>
							<td>031-584-0616</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">상천역(한국철도공사)</td>
							<td>031-585-8874</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">청평역(한국철도공사)</td>
							<td>031-584-0012</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">갈매역(한국철도공사)</td>
							<td>031-572-8827</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">영통역(한국철도공사)</td>
							<td>031-203-1165</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">소요산역(한국철도공사)</td>
							<td>031-865-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">동두천역(한국철도공사)</td>
							<td>031-862-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">보산역(한국철도공사)</td>
							<td>031-866-4987</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">평내호평역(한국철도공사)</td>
							<td>031-591-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">아신역(한국철도공사)</td>
							<td>031-771-7523</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">원덕역(한국철도공사)</td>
							<td>031-771-4196</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">오빈역(한국철도공사)</td>
							<td>031-774-8873</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">양평역(한국철도공사)</td>
							<td>031-774-6841</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">신원역(한국철도공사)</td>
							<td>031-771-7428</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">양수역(한국철도공사)</td>
							<td>031-772-6006</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">국수역(한국철도공사)</td>
							<td>031-772-7578</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">운길산역(한국철도공사)</td>
							<td>031-577-7196</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">안양역(한국철도공사)</td>
							<td>031-448-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">금정역(한국철도공사)</td>
							<td>031-393-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">화서역(한국철도공사)</td>
							<td>031-250-6344</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">수원역(경부선 한국철도공사)</td>
							<td>031-253-2724</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">덕소역(한국철도공사)</td>
							<td>031-576-0112</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">양주역(한국철도공사)</td>
							<td>031-841-7787</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">수원역(분당선 한국철도공사)</td>
							<td>031-242-7738</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">곤지암역(한국철도공사)</td>
							<td>070-7821-5670</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">경기광주역(한국철도공사)</td>
							<td>031-761-8460</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">삼동역(한국철도공사)</td>
							<td>070-7821-5631</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">초월역(한국철도공사)</td>
							<td>070-7821-5661</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">서현역(한국철도공사)</td>
							<td>031-703-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">이매역(한국철도공사)</td>
							<td>031-701-2903</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">야탑역(한국철도공사)</td>
							<td>031-703-3238</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">미금역(한국철도공사)</td>
							<td>031-786-5347</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">도심역(한국철도공사)</td>
							<td>031-521-8675</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">도농역(한국철도공사)</td>
							<td>031-563-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">양정역(한국철도공사)</td>
							<td>031-559-7786</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">구리역(한국철도공사)</td>
							<td>031-552-7784</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">금곡역(한국철도공사)</td>
							<td>031-591-7109</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">별내역(한국철도공사)</td>
							<td>031-528-7741</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">사릉역(한국철도공사)</td>
							<td>031-575-8862</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">퇴계원역(한국철도공사)</td>
							<td>031-571-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">마석역(한국철도공사)</td>
							<td>031-593-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">천마산역(한국철도공사)</td>
							<td>031-592-7798</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">동두천중앙역(한국철도공사)</td>
							<td>031-865-2788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">지행역(한국철도공사)</td>
							<td>031-862-2788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">정자역(한국철도공사)</td>
							<td>031-712-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">수내역(한국철도공사)</td>
							<td>031-714-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">오리역(한국철도공사)</td>
							<td>031-786-5347</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">판교역(한국철도공사)</td>
							<td>031-8016-7291</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">태평역(한국철도공사)</td>
							<td>031-751-7788</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">가천대역(한국철도공사)</td>
							<td>031-750-4329</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">모란역(한국철도공사)</td>
							<td>031-721-4600</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">수원시청역(한국철도공사)</td>
							<td>031-221-7768</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">매탄권선역(한국철도공사)</td>
							<td>031-211-0226</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">망포역(한국철도공사)</td>
							<td>031-203-7720</td>
						</tr>
						
						<tr>
							<td class="first">경기도</td>
							<td class="alft">청명역(한국철도공사)</td>
							<td>031-203-5250</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">진영역(한국철도공사)</td>
							<td>055-345-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">신창원역(한국철도공사)</td>
							<td>055-238-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">한림정역(한국철도공사)</td>
							<td>055-342-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">진례역(한국철도공사)</td>
							<td>055-345-1488</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">창원중앙역(한국철도공사)</td>
							<td>055-287-6388</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">창원역(한국철도공사)</td>
							<td>055-292-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">북천역(한국철도공사)</td>
							<td>055-883-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">마산역(한국철도공사)</td>
							<td>055-293-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">하동역(한국철도공사)</td>
							<td>055-882-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">횡천역(한국철도공사)</td>
							<td>055-882-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">군북(위탁)역(한국철도공사)</td>
							<td>055-585-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">함안역(한국철도공사)</td>
							<td>055-583-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">삼랑진역(한국철도공사)</td>
							<td>055-353-8078</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">반성역(한국철도공사)</td>
							<td>055-754-6788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">물금역(한국철도공사)</td>
							<td>055-383-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">원동역(한국철도공사)</td>
							<td>055-382-7708</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">진주역(한국철도공사)</td>
							<td>055-753-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">밀양역(한국철도공사)</td>
							<td>055-359-4278</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">중리(위탁)역(한국철도공사)</td>
							<td>055-231-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">완사역(한국철도공사)</td>
							<td>055-753-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상남도</td>
							<td class="alft">상동역(한국철도공사)</td>
							<td>055-359-4218</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">분천역(한국철도공사)</td>
							<td>054-639-2640</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">임기역(한국철도공사)</td>
							<td>054-673-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">현동역(한국철도공사)</td>
							<td>054-673-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">춘양역(한국철도공사)</td>
							<td>054-639-2607</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">승부역(한국철도공사)</td>
							<td>054-673-0468</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">봉화역(한국철도공사)</td>
							<td>054-639-2381</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">화본역(한국철도공사)</td>
							<td>054-382-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">석포역(한국철도공사)</td>
							<td>054-639-2652</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">옥산역(한국철도공사)</td>
							<td>054-639-2531</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">점촌역(한국철도공사)</td>
							<td>054-639-2508</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">청천역(한국철도공사)</td>
							<td>053-940-2271</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">괴동역(한국철도공사)</td>
							<td>054-722-3315</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">경주역(한국철도공사)</td>
							<td>054-743-4114</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">남성현역(한국철도공사)</td>
							<td>053-373-1816</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">신동역(한국철도공사)</td>
							<td>054-972-2112</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">상주역(한국철도공사)</td>
							<td>054-639-2526</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">왜관역(한국철도공사)</td>
							<td>054-429-2146</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">월포역(한국철도공사)</td>
							<td>054-722-7802</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">영덕역(한국철도공사)</td>
							<td>054-722-7833</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">장사역(한국철도공사)</td>
							<td>054-722-7833</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">강구역(한국철도공사)</td>
							<td>054-722-7824</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">포항역(한국철도공사)</td>
							<td>054-722-7607</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">지천역(한국철도공사)</td>
							<td>053-313-5175</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">안강역(한국철도공사)</td>
							<td>054-761-3285</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">서경주역(한국철도공사)</td>
							<td>054-775-3214</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">약목역(한국철도공사)</td>
							<td>054-429-2132</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">구미역(한국철도공사)</td>
							<td>054-429-2143</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">사곡역(한국철도공사)</td>
							<td>054-429-2143</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">김천역(한국철도공사)</td>
							<td>054-429-2114</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">김천(구미)역(한국철도공사)</td>
							<td>054-437-2752</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">영천역(한국철도공사)</td>
							<td>054-333-1530</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">북영천역(한국철도공사)</td>
							<td>054-333-1530</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">청도역(한국철도공사)</td>
							<td>053-940-2523</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">나원역(한국철도공사)</td>
							<td>054-777-1272</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">문수역(한국철도공사)</td>
							<td>054-639-2239</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">신녕역(한국철도공사)</td>
							<td>054-336-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">불국사역(한국철도공사)</td>
							<td>054-744-6123</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">풍기역(한국철도공사)</td>
							<td>054-639-2233</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">영주역(한국철도공사)</td>
							<td>054-639-2256</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">운산역(한국철도공사)</td>
							<td>054-858-3988</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">개포역(한국철도공사)</td>
							<td>054-639-2508</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">무릉역(한국철도공사)</td>
							<td>054-859-2788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">안동역(한국철도공사)</td>
							<td>054-851-5214</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">함창역(한국철도공사)</td>
							<td>054-639-2508</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">청리역(한국철도공사)</td>
							<td>054-639-2508</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">희방사역(한국철도공사)</td>
							<td>054-639-2232</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">하양역(한국철도공사)</td>
							<td>053-851-1130</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">의성역(한국철도공사)</td>
							<td>054-832-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">삼성역(한국철도공사)</td>
							<td>053-940-2503</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">예천역(한국철도공사)</td>
							<td>054-639-2284</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">경산역(한국철도공사)</td>
							<td>053-816-4973</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">건천역(한국철도공사)</td>
							<td>054-751-6397</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">양원(임시승강장)역(한국철도공사)</td>
							<td>054-673-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">신경주역(한국철도공사)</td>
							<td>054-613-8010</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">탑리역(한국철도공사)</td>
							<td>054-833-7788</td>
						</tr>
						
						<tr>
							<td class="first">경상북도</td>
							<td class="alft">용궁역(한국철도공사)</td>
							<td>054-639-2508</td>
						</tr>
						
						<tr>
							<td class="first">광주광역시</td>
							<td class="alft">효천역(한국철도공사)</td>
							<td>062-674-1188</td>
						</tr>
						
						<tr>
							<td class="first">광주광역시</td>
							<td class="alft">광주송정역(한국철도공사)</td>
							<td>062-941-3278</td>
						</tr>
						
						<tr>
							<td class="first">광주광역시</td>
							<td class="alft">광주역(한국철도공사)</td>
							<td>062-511-6367</td>
						</tr>
						
						<tr>
							<td class="first">광주광역시</td>
							<td class="alft">극락강역(한국철도공사)</td>
							<td>062-951-7725</td>
						</tr>
						
						<tr>
							<td class="first">광주광역시</td>
							<td class="alft">전북본부(한국철도공사)</td>
							<td>063-850-2303</td>
						</tr>
						
						<tr>
							<td class="first">광주광역시</td>
							<td class="alft">서광주역(한국철도공사)</td>
							<td>062-655-7788</td>
						</tr>
						
						<tr>
							<td class="first">대구광역시</td>
							<td class="alft">가천역(한국철도공사)</td>
							<td>053-940-2247</td>
						</tr>
						
						<tr>
							<td class="first">대구광역시</td>
							<td class="alft">동대구역(한국철도공사)</td>
							<td>053-940-2222</td>
						</tr>
						
						<tr>
							<td class="first">대구광역시</td>
							<td class="alft">대구역(한국철도공사)</td>
							<td>053-940-2318</td>
						</tr>
						
						<tr>
							<td class="first">대구광역시</td>
							<td class="alft">대구경북본부(한국철도공사)</td>
							<td>054-639-2077</td>
						</tr>
						
						<tr>
							<td class="first">대전광역시</td>
							<td class="alft">서대전역(한국철도공사)</td>
							<td>042-259-2499</td>
						</tr>
						
						<tr>
							<td class="first">대전광역시</td>
							<td class="alft">신탄진역(한국철도공사)</td>
							<td>042-259-2286</td>
						</tr>
						
						<tr>
							<td class="first">대전광역시</td>
							<td class="alft">한국철도공사(KORAIL)</td>
							<td>1544-77-88</td>
						</tr>
						
						<tr>
							<td class="first">대전광역시</td>
							<td class="alft">대전역(한국철도공사)</td>
							<td>042-259-2416</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">가야역(한국철도공사)</td>
							<td>051-894-7788</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">안락역(한국철도공사)</td>
							<td>051-440-2453</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">부전역(한국철도공사)</td>
							<td>051-440-2453</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">동래역(한국철도공사)</td>
							<td>051-552-4520</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">구포역(한국철도공사)</td>
							<td>051-440-2495</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">오시리아역(한국철도공사)</td>
							<td>051-440-2275</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">부산신항역(한국철도공사)</td>
							<td>055-250-4406</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">부산경남본부(한국철도공사)</td>
							<td>051-464-0686</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">화명역(한국철도공사)</td>
							<td>051-336-7738</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">좌천역(한국철도공사)</td>
							<td>052-226-6242</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">일광역(한국철도공사)</td>
							<td>051-440-2279</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">부산진역(한국철도공사)</td>
							<td>051-440-2566</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">사상역(한국철도공사)</td>
							<td>051-315-7788</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">기장역(한국철도공사)</td>
							<td>051-440-2277</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">부산역(한국철도공사)</td>
							<td>051-440-2641</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">거제역(한국철도공사)</td>
							<td>051-868-2657</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">센텀역(한국철도공사)</td>
							<td>051-440-2264</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">월내역</td>
							<td>052-226-6244</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">부산원동역(한국철도공사)</td>
							<td>051-440-2283</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">벡스코역(한국철도공사)</td>
							<td>051-731-6952</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">교대역(한국철도공사)</td>
							<td>051-440-2241</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">거제해맞이역(한국철도공사)</td>
							<td>051-440-2234</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">신해운대역(한국철도공사)</td>
							<td>051-747-7788</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">재송역(한국철도공사)</td>
							<td>051-781-4296</td>
						</tr>
						
						<tr>
							<td class="first">부산광역시</td>
							<td class="alft">송정역(한국철도공사)</td>
							<td>051-701-0859</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">강남구청역(한국철도공사)</td>
							<td>02-3673-9151</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">오류동역(한국철도공사)</td>
							<td>02-2639-3417</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">서울숲역(한국철도공사)</td>
							<td>02-464-0779</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">복정역(한국철도공사)</td>
							<td>02-400-6216</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">압구정로데오역(한국철도공사)</td>
							<td>02-3288-7744</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">수서역(한국철도공사)</td>
							<td>02-2226-6881</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">구룡역(한국철도공사)</td>
							<td>02-579-7760</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">개봉역(한국철도공사)</td>
							<td>02-2639-3298</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">대모산입구역(한국철도공사)</td>
							<td>02-3412-9471</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">도곡역(한국철도공사)</td>
							<td>02-576-2706</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">선정릉역(한국철도공사)</td>
							<td>02-511-4761</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">한티역(한국철도공사)</td>
							<td>02-569-9704</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">선릉역(한국철도공사)</td>
							<td>02-568-7715</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">이촌역(한국철도공사)</td>
							<td>02-798-3071</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">노량진역(한국철도공사)</td>
							<td>02-814-7788</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">서빙고역(한국철도공사)</td>
							<td>02-795-0778</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">개포동역(한국철도공사)</td>
							<td>02-3412-4418</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">신길역(한국철도공사)</td>
							<td>02-2639-3553</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">대방역(한국철도공사)</td>
							<td>02-2639-3331</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">영등포역(한국철도공사)</td>
							<td>02-2639-3320</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">금천구청역(한국철도공사)</td>
							<td>02-801-5347</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">신도림역(한국철도공사)</td>
							<td>02-2639-3349</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">독산역(한국철도공사)</td>
							<td>02-2639-3229</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">가산디지털단지역(한국철도공사)</td>
							<td>02-2639-3332</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">온수역(한국철도공사)</td>
							<td>02-2639-3461</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">구일역(한국철도공사)</td>
							<td>02-865-6190</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">구로역(한국철도공사)</td>
							<td>02-869-0089</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">월계역(한국철도공사)</td>
							<td>02-906-2522</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">상봉역(한국철도공사)</td>
							<td>02-432-7783</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">서울역(한국철도공사)</td>
							<td>02-755-7108</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">수색역(한국철도공사)</td>
							<td>02-305-7788</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">효창공원앞역(한국철도공사)</td>
							<td>02-701-6418</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">신촌역(한국철도공사)</td>
							<td>02-363-7788</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">가좌역(한국철도공사)</td>
							<td>02-373-1280</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">홍대입구역(한국철도공사)</td>
							<td>02-322-7898</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">공덕역(한국철도공사)</td>
							<td>02-702-5277</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">서강대역(한국철도공사)</td>
							<td>02-712-5288</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">청량리역(한국철도공사)</td>
							<td>02-966-2643</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">회기역(한국철도공사)</td>
							<td>02-965-1467</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">응봉역(한국철도공사)</td>
							<td>02-2295-6319</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">옥수역(한국철도공사)</td>
							<td>02-3299-7328</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">왕십리역(한국철도공사)</td>
							<td>02-2291-7787</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">망우역(한국철도공사)</td>
							<td>02-432-7788</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">수도권광역본부(한국철도공사)</td>
							<td>02-2639-3877</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">양원역(한국철도공사)</td>
							<td>02-435-7788</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">중랑역(한국철도공사)</td>
							<td>02-436-7785</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">남영역(한국철도공사)</td>
							<td>02-792-7788</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">석계역(한국철도공사)</td>
							<td>02-943-7788</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">녹천역(한국철도공사)</td>
							<td>02-905-0182</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">창동역(한국철도공사)</td>
							<td>02-917-7445</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">신이문역(한국철도공사)</td>
							<td>02-960-1871</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">외대앞역(한국철도공사)</td>
							<td>02-966-6705</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">도봉산역(한국철도공사)</td>
							<td>02-955-7345</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">방학역(한국철도공사)</td>
							<td>02-3492-0197</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">도봉역(한국철도공사)</td>
							<td>02-3493-8874</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">신내역(한국철도공사)</td>
							<td>02-2207-7789</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">디지털미디어시티역(한국철도공사)</td>
							<td>02-305-1030</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">한남역(한국철도공사)</td>
							<td>02-798-5710</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">광운대역(한국철도공사)</td>
							<td>02-917-7445</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">용산역(한국철도공사)</td>
							<td>02-3780-5490</td>
						</tr>
						
						<tr>
							<td class="first">서울특별시</td>
							<td class="alft">서울본부(한국철도공사)</td>
							<td>02-3149-2224</td>
						</tr>
						
						<tr>
							<td class="first">세종특별자치시</td>
							<td class="alft">전의역(한국철도공사)</td>
							<td>044-863-2024</td>
						</tr>
						
						<tr>
							<td class="first">세종특별자치시</td>
							<td class="alft">부강역(한국철도공사)</td>
							<td>044-275-7788</td>
						</tr>
						
						<tr>
							<td class="first">세종특별자치시</td>
							<td class="alft">조치원역(한국철도공사)</td>
							<td>044-330-0224</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">북울산역</td>
							<td>052-226-6286</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">개운포역(한국철도공사)</td>
							<td>052-226-6250</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">망양역(한국철도공사)</td>
							<td>052-226-6241</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">덕하역(한국철도공사)</td>
							<td>052-268-7788</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">서생역</td>
							<td>052-237-8311</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">온산역(한국철도공사)</td>
							<td>052-254-7787</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">울산역(한국철도공사)</td>
							<td>052-254-7787</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">태화강역(한국철도공사)</td>
							<td>052-272-9726</td>
						</tr>
						
						<tr>
							<td class="first">울산광역시</td>
							<td class="alft">남창역(한국철도공사)</td>
							<td>052-238-7788</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">동암역(한국철도공사)</td>
							<td>032-421-7788</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">동인천역(한국철도공사)</td>
							<td>032-772-7788</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">소래포구역(한국철도공사)</td>
							<td>031-8077-5521</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">부개역(한국철도공사)</td>
							<td>032-517-7788</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">남동인더스파크역(한국철도공사)</td>
							<td>031-8077-5551</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">인천논현역(한국철도공사)</td>
							<td>031-8077-5533</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">도화역(한국철도공사)</td>
							<td>032-866-0122</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">제물포역(한국철도공사)</td>
							<td>032-717-9305</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">인천역(한국철도공사)</td>
							<td>032-772-0784</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">호구포역(한국철도공사)</td>
							<td>031-8077-5541</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">주안역(한국철도공사)</td>
							<td>032-865-7787</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">도원역(한국철도공사)</td>
							<td>032-760-8302</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">부평역(한국철도공사)</td>
							<td>032-528-1439</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">간석역(한국철도공사)</td>
							<td>032-427-7788</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">백운역(한국철도공사)</td>
							<td>032-524-7788</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">송도역(한국철도공사)</td>
							<td>031-8077-5593</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">인하대역(한국철도공사)</td>
							<td>031-8077-5643</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">원인재역(한국철도공사)</td>
							<td>031-8077-5573</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">신포역(한국철도공사)</td>
							<td>031-8077-5661</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">연수역(한국철도공사)</td>
							<td>031-8077-5581</td>
						</tr>
						
						<tr>
							<td class="first">인천광역시</td>
							<td class="alft">숭의역(한국철도공사)</td>
							<td>031-8077-5651</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">벌교역(한국철도공사)</td>
							<td>061-857-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">조성역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">보성역(한국철도공사)</td>
							<td>061-852-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">다시역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">이양역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">예당역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">구례구역(한국철도공사)</td>
							<td>061-782-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">진상역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">태금역(한국철도공사)</td>
							<td>061-792-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">곡성역(한국철도공사)</td>
							<td>061-362-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">광양역(한국철도공사)</td>
							<td>061-762-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">목포역(한국철도공사)</td>
							<td>061-240-4289</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">광주전남본부(한국철도공사)</td>
							<td>061-749-2150</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">득량역(한국철도공사)</td>
							<td>061-853-7113</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">신광양항역(한국철도공사)</td>
							<td>061-792-7783</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">명봉역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">나주역(한국철도공사)</td>
							<td> 062-601-3239 </td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">흥국사역(한국철도공사)</td>
							<td>061-685-6083</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">여천역(한국철도공사)</td>
							<td>061-684-7785</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">적량역(한국철도공사)</td>
							<td>061-686-3648</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">여수엑스포역(한국철도공사)</td>
							<td>061-749-2604</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">순천역(한국철도공사)</td>
							<td>061-749-2288</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">화순역(한국철도공사)</td>
							<td>061-374-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">능주역(한국철도공사)</td>
							<td>061-372-1028</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">함평역(한국철도공사)</td>
							<td>061-323-6352</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">임성리역(한국철도공사)</td>
							<td>061-283-2288</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">덕양역(한국철도공사)</td>
							<td>061-749-2642</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">장성역(한국철도공사)</td>
							<td>061-393-0588</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">무안역(한국철도공사)</td>
							<td>061-453-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">백양사역(한국철도공사)</td>
							<td>061-392-9044</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">몽탄역(한국철도공사)</td>
							<td>061-452-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라남도</td>
							<td class="alft">일로역(한국철도공사)</td>
							<td>061-281-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">남원역(한국철도공사)</td>
							<td>063-630-0224</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">정읍역(한국철도공사)</td>
							<td>063-701-8108</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">익산역(한국철도공사)</td>
							<td>063-850-2314</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">군산역(한국철도공사)</td>
							<td>063-850-2361</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">임실역(한국철도공사)</td>
							<td>063-640-0346</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">삼례역(한국철도공사)</td>
							<td>063-249-7031</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">동익산역(한국철도공사)</td>
							<td>063-850-2354</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">황등역(한국철도공사)</td>
							<td>063-850-2346</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">동산역(한국철도공사)</td>
							<td>063-249-7041</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">전주역(한국철도공사)</td>
							<td>063-243-7788</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">함열역(한국철도공사)</td>
							<td>063-850-2341</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">관촌역(한국철도공사)</td>
							<td>063-640-0346</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">대야역(한국철도공사)</td>
							<td>063-850-2368</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">김제역(한국철도공사)</td>
							<td>063-544-7828</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">신태인역(한국철도공사)</td>
							<td>063-700-5209</td>
						</tr>
						
						<tr>
							<td class="first">전라북도</td>
							<td class="alft">오수역(한국철도공사)</td>
							<td>063-640-0346</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">신례원역(한국철도공사)</td>
							<td>041-334-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">삽교역(한국철도공사)</td>
							<td>041-337-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">신창(순천향대)역(한국철도공사)</td>
							<td>041-543-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">두정역(한국철도공사)</td>
							<td>041-562-7791 </td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">성환역(한국철도공사)</td>
							<td>041-581-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">직산역(한국철도공사)</td>
							<td>041-583-7788 </td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">광천역(한국철도공사)</td>
							<td>041-642-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">홍성역(한국철도공사)</td>
							<td>041-632-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">봉명역(한국철도공사)</td>
							<td>041-579-7432</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">온양온천역(한국철도공사)</td>
							<td>041-541-0865</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">천안역(한국철도공사)</td>
							<td>041-562-7034</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">예산역(한국철도공사)</td>
							<td>041-335-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">서천역(한국철도공사)</td>
							<td>041-953-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">계룡역(한국철도공사)</td>
							<td>042-841-7941</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">연산역(한국철도공사)</td>
							<td>041-735-0804</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">강경역(한국철도공사)</td>
							<td>041-745-3957</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">공주역(한국철도공사)</td>
							<td>041-400-4104</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">천안아산역(한국철도공사)</td>
							<td>041-549-6788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">아산역(한국철도공사)</td>
							<td>041-532-6610</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">배방역(한국철도공사)</td>
							<td>041-531-9027</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">탕정역(한국철도공사)</td>
							<td>041-548-6788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">논산역(한국철도공사)</td>
							<td>041-732-7273</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">판교역장항선(한국철도공사)</td>
							<td>041-951-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">도고온천(위탁)역(한국철도공사)</td>
							<td>041-532-3688</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">쌍용(나사렛대)역(한국철도공사)</td>
							<td>041-571-0364</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">장항역(한국철도공사)</td>
							<td>041-956-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">웅천역(한국철도공사)</td>
							<td>041-933-2788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">청소역(한국철도공사)</td>
							<td>041-931-2788</td>
						</tr>
						
						<tr>
							<td class="first">충청남도</td>
							<td class="alft">대천역(한국철도공사)</td>
							<td>041-935-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">대전충청본부(한국철도공사)</td>
							<td>042-259-2242</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">청주공항역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">오송역(한국철도공사)</td>
							<td>043-231-4542</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">충주역(한국철도공사)</td>
							<td>043-844-7181</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">주덕역(한국철도공사)</td>
							<td>043-840-6258</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">삼탄역(한국철도공사)</td>
							<td>043-852-7786</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">제천역(한국철도공사)</td>
							<td>043-641-2114</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">단양역(한국철도공사)</td>
							<td>043-422-3211</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">청주역(한국철도공사)</td>
							<td>043-236-8315</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">음성역(한국철도공사)</td>
							<td>043-872-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">옥천역(한국철도공사)</td>
							<td>042-259-2306</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">오근장역(한국철도공사)</td>
							<td>043-211-6403</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">각계역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">증평역(한국철도공사)</td>
							<td>043-836-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">지탄역(한국철도공사)</td>
							<td>02-1544-7788</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">이원역(한국철도공사)</td>
							<td>042-259-2307</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">황간역(한국철도공사)</td>
							<td>043-744-8933</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">추풍령역(한국철도공사)</td>
							<td>043-742-3788</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">영동역(한국철도공사)</td>
							<td>043-743-7759</td>
						</tr>
						
						<tr>
							<td class="first">충청북도</td>
							<td class="alft">심천역(한국철도공사)</td>
							<td>043-742-5717</td>
						</tr>						
					</tbody>
				</table>
            </div>
        </section>
    </section>    
    
	<%@ include file="/WEB-INF/layout/inc_footer.jsp" %>
</body>
</html>