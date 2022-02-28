<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FIND ME</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/fonts.css">
    <link rel="stylesheet" href="../resources/css/common.css">
    <link rel="stylesheet" href="../resources/css/sub.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../resources/js/common.js" async></script>
</head>

<body>
    <%@ include file="/WEB-INF/layout/inc_header.jsp" %>

    <section id="sub" class="found-report">

        <section class="sub__common">
            <div class="sub__visual found">
                <h2>습득물</h2>
            </div>

            <nav class="sub__nav">
                <div class="container">
                    <ul>
                        <li class="active"><a href="/found/report.do">습득물 신고</a></li>
                        <li><a href="/found/list.do">습득물 리스트</a></li>
                    </ul>
                </div>
            </nav>
        </section>

        <section class="sub__conts">
            <div class="container">
                <h3>습득물 신고</h3>
                <c:if test="${empty sessionScope.loginUser }">
                	<p class="text-center mb-5">
                		※ 습득물 신고 시 주어지는 마일리지를 적립하시려면 로그인 후 이용해주세요.
                	</p>
                </c:if>
                <form class="report__form" action="/found/register.do" method="post" enctype="multipart/form-data">
                    <div class="container_upper">
                        <div class="container_left">
                            <div class="container_image">
                                <figure>
                                    <img src="../resources/img/img_lost.png" alt="image preview">
                                </figure>
                            </div>
                            <div class="container_upload">
                                <label for="foundImg">이미지업로드</label>
                                <input type="file" id="foundImg" name="foundFileUpload" value="">
                            </div>
                        </div>
                        <div class="container_right">
                            <ul class="container_info">
                                <li><label for="">습득자 :</label> <input type="text" id="" name="userName" placeholder="성함을 입력해주세요"
                                        required="required"></li>
                                <li><label for="">상품종류 :</label> <input type="text" id="" name="foundCategory" placeholder="상품종류를 입력해주세요"
                                        required="required"></li>
                                <li><label for="">습득날짜 :</label> <input type="date" id="" name="foundDate"></li>
                                <li>
                                    <label for="">습득 노선 :</label>
                                    <select id="" name="foundStation">
                                        <option value="1">1호선</option>
                                        <option value="2">2호선</option>
                                        <option value="3">3호선</option>
                                        <option value="4">4호선</option>
                                        <option value="5">5호선</option>
                                        <option value="6">6호선</option>
                                        <option value="7">7호선</option>
                                        <option value="8">8호선</option>
                                        <option value="9">9호선</option>
                                    </select>
                                </li>
                                <li><label for="">연락처 :</label> <input type="text" id="" name="nuPhone" placeholder="연락받을 연락처를 입력해주세요"
                                        required="required"></li>
                                <li><label for="">해시태그 :</label> <textarea id="" name="foundHashtag" placeholder="#을붙여 #키워드태그"></textarea></li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="wordcloud-wrap">
                    	<img src="../resources/img/wordcloud.jpg" alt="워드클라우드">
                    	<p>하단 이미지는 FINE ME 습득물 신고에 입력된 해시태그로 만들어진 워드 클라우드입니다.<br>작성 시 참고해주시면 분실자가 물건을 찾는데 많은 도움이 됩니다.</p>
                    </div>
                    
                    <div class="container_bottom">
                        <div class="container_bottom_layer">
                            게시글 비밀번호 : <input type="password" name="foundPostPassword" maxlength="4" placeholder="비밀번호 네자리 입력" title="수정시 사용할 비밀번호를 입력해주세요."
                                required="required"><br>
                            <input class="btn-basic mt-5" type="submit" value="등록하기">
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </section>

    <%@ include file="/WEB-INF/layout/inc_footer.jsp" %>

    <script> 
        function readImage(input) {
            if(input.files && input.files[0]) {
                const reader = new FileReader()
                reader.onload = e => {
                    const previewImage = document.querySelector(".container_image>figure>img");
                    previewImage.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        const inputImage = document.getElementById("foundImg");
        inputImage.addEventListener("change", e => {
            readImage(e.target);
        })
    </script>
</body>

</html>