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

<body id="sub" class="login sub--member">
    <%@ include file="/WEB-INF/layout/inc_header.jsp" %>

    <section class="sub__conts">
        <form action="/login/form.do" method="post">
               <div id="login__box" class="container">
                   <div id="title-div">
                       <h3 id="a-findMe">LOGIN</h3>
                   </div>
                <div id="login-Form">
                    <div id="id" class="content-div">
                        <input type="text" id="user_Id" placeholder="ID" class="input" name="user_Id">
                    </div>
                    <div id="pass" class="content-div">
                        <input type="password"  id="user_Pwd" placeholder="PW" class="input" name="user_Pwd">
                    </div>

                <div id="bottom-login">
                    <div id="login-div">
                        <button type="button" id="login-button" >로그인</button>
                    </div>
                        <a href="/user/find.do" id="a-find">아이디/비밀번호 찾기</a>
                </div>

                </div>
           </form> 
        </div>

        <div id="join-div" class="container">
            <a href="/user/join.do" id="join-button">회원가입</a>
        </div>
    </section>
    <%@ include file="/WEB-INF/layout/inc_footer.jsp" %>

    <script>
    
    
    $("#login-button").on("click", function() {
		var user_Id = $("#user_Id").val();
		var user_Pwd = $("#user_Pwd").val();
		$.ajax({
			url : "/login/check.do",
			type : "POST",
			data : {"user_Id" : user_Id, "user_Pwd" : user_Pwd },
			success : function(data) {
				if(data == "success") {
					//홈으로 
					location.href='/home.do';
				}else{
					alert("로그인에 실패하셨습니다.");
				}
			},
			error : function() {
				alert("ajax 실패!");
			}
		});
	});  
  

    </script>
</body>

</html>