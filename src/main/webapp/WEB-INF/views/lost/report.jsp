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

    <section id="sub" class="lost-report">
        <section class="sub__common">
            <div class="sub__visual lost">
                <h2>분실물</h2>
            </div>

            <nav class="sub__nav">
                <div class="container">
                    <ul>
                        <li class="active"><a href="/lost/report.do">분실물 신고</a></li>
                        <li><a href="/lost/list.do">분실물 리스트</a></li>
                    </ul>
                </div>
            </nav>
        </section>

        <section class="sub__conts">
            <div class="container">
                <h3>분실물 신고</h3>
                <form class="report__form" action="/lost/register.do" method="post" enctype="multipart/form-data">
                    <div class="container_upper">
                        <div class="container_left">
                            <div class="container_image">
                                <figure>
                                    <img src="../resources/img/img_lost.png" alt="">
                                </figure>
                            </div>
                            <div class="container_upload">
                                <label for="lostImg">이미지업로드</label>
                                <input type="file" id="lostImg" name="lostFileUpload" value="">
                            </div>
                        </div>
                        <div class="container_right">
                            <ul class="container_info">
                                <li><label for="">분실자 :</label> <input id="" type="text" name="userName"
                                        placeholder="분실자명을 입력해주세요" required="required"></li>
                                <li><label for="">상품종류 :</label> <input id="" type="text" name="lostCategory"
                                        placeholder="상품종류를 입력해주세요" required="required"></li>
                                <li><label for="">분실날짜 :</label> <input id="" type="date" name="lostDate"></li>
                                <li><label for="">예상 분실 노선 : </label>
                                    <select id="" name="lostSubway">
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
                                <li><label for="">연락처 :</label> <input id="" type="text" name="nuPhone"
                                        placeholder="연락받을 연락처를 입력해주세요" required="required"></li>
                                <li><label for="">간단설명(선택) :</label> <textarea id="" name="lostDetail" placeholder="분실 경위를 쓰시면 도움이 됩니다."></textarea>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="container_bottom">
                        <div class="container_bottom_layer">
                            게시글 비밀번호 : <input type="password" name="lostPostPassword" maxlength="4" placeholder="비밀번호 네자리 입력" title="수정시 사용할 비밀번호를 입력해주세요."
                                required="required"><br>
                            <input class="btn-basic mt-5" type="submit" value="등록하기">
                        </div>
                    </div>
                </form>
            </div>
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
            const inputImage = document.getElementById("lostImg");
            inputImage.addEventListener("change", e => {
                readImage(e.target);
            })
        </script>
</body>

</html>