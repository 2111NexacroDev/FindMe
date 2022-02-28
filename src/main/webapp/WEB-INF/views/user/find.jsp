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
    <meta charset="UTF-8">
    <title>로그인</title>
</head>

<body class="find sub--member">
    <%@ include file="/WEB-INF/layout/inc_header.jsp" %>
    <div id="find__box" class="container">
        <div id="content">
            <ul>
                <li><button type="button" id="id-but">아이디 찾기</button></li>
                <li><button type="button" id="pw-but">비밀번호 찾기</button></li>
            </ul>
        </div>
        <div id="id-form">
            <div class="find-ment">회원가입시 입력한 정보로</div>
            <div class="find-ment">아이디를 찾으실 수 있습니다.</div>

            <div class="content-div">
                <div class="find-div">
                    <input type="text" id="user_Name" name="user_Name" class="input" placeholder="이름">
                </div>
                <div class="find-div">
                    <input type="text" id="user_Email" name="user_Email" class="input" placeholder="이메일">
                </div>
            </div>

            <div id="ok-id" class="container">
                <button type="button" id="id-button">확인</button>
            </div>
        </div>

        <div id="pw-form">
            <div class="find-ment">회원가입시 입력한 정보로</div>
            <div class="find-ment">비밀번호를 찾으실 수 있습니다.</div>

            <div class="content-div">
                <div class="find-div">
                    <input type="text" id="user-Id" name="user_Id" class="input" placeholder="아이디">
                </div>
                <div class="find-div">
                    <input type="text" id="user-Name" name="user_Name" class="input" placeholder="이름">
                </div>
                <div class="find-div">
                    <input type="text" id="user-Email" name="user_Email" class="input" placeholder="이메일">
                </div>
            </div>

            <div id="ok-pw" class="container">
                <button type="button" id="pw-button">확인</button>
            </div>

        </div>
    </div>
    <%@ include file="/WEB-INF/layout/inc_footer.jsp" %>

    <script>
        document.getElementById("id-but").onclick = function () {
            console.log("아이디찾기");
            document.getElementById("id-but").style.color = "white";
            document.getElementById("id-but").style.backgroundColor = "RGB(102,98,177)";

            document.getElementById("pw-but").style.color = "black";
            document.getElementById("pw-but").style.backgroundColor = "white";
            document.getElementById("ok-id").style.marginTop = "20%";

            document.getElementById("id-form").style.display = "inline";
            document.getElementById("pw-form").style.display = "none";
        }

        document.getElementById("pw-but").onclick = function () {
            console.log("비밀번호찾기");

            document.getElementById("pw-but").style.color = "white";
            document.getElementById("pw-but").style.backgroundColor = "RGB(102,98,177)";

            document.getElementById("id-but").style.color = "black";
            document.getElementById("id-but").style.backgroundColor = "white";
            document.getElementById("ok-pw").style.marginTop = "15px";

            document.getElementById("id-form").style.display = "none";
            document.getElementById("pw-form").style.display = "inline";
        }


        $("#id-button").on("click", function () {
            var user_Name = $("#user_Name").val();
            var user_Email = $("#user_Email").val();
            $.ajax({
                url: "/user/findId.do",
                type: "POST",
                data: {
                    "user_Name": user_Name,
                    "user_Email": user_Email
                },
                success: function (data) {
                    if (data == "fail") {
                        alert("회원 조회에 실패했습니다.");
                    } else {
                        console.log(data);
                        alert("회원님의 아이디는 " + data + "입니다.");
                    }
                },
                error: function () {
                    alert("ajax 실패!");
                }
            });
        });


        $("#pw-button").on("click", function () {
            var user_Id = $("#user-Id").val();
            var user_Name = $("#user-Name").val();
            var user_Email = $("#user-Email").val();
            $.ajax({
                url: "/user/findPw.do",
                type: "POST",
                data: {
                    "user_Id": user_Id,
                    "user_Name": user_Name,
                    "user_Email": user_Email
                },
                success: function (data) {
                    if (data == "fail") {
                        alert("회원 조회에 실패했습니다.");
                    } else {
                        console.log(data);
                        alert("회원님의 비밀번호는 " + data + "입니다.");
                    }
                },
                error: function () {
                    alert("ajax 실패!");
                }
            });
        });
    </script>
</body>

</html>