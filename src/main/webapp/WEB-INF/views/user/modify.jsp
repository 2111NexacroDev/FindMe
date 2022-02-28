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
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>

<body id="mypage" class="modify sub--member">
	<%@ include file="/WEB-INF/layout/inc_mypage.jsp" %>
	
    <section class="sub__conts">
	    <form action="/modifiy/form.do" method="post">
	        <h3>정보수정</h3>
	        
	        <div id="modify__box" class="container">
	            <div id="content">
	                <div id="password" class="content-div">
	                    <input type="password" id="user_Pwd" name="user_Pwd" placeholder="비밀번호" class="input">
	                    <p id="pwChk">현재비밀번호와 일치합니다.</p>
	                </div>
	                <div id="E-mail" class="content-div">
	                    <input type="text" id="user_Email" name="user_Email" placeholder="E-mail" class="input">
	                </div>
	                <div id="phone" class="content-div">
	                    <input type="text" id="user_Phone" name="user_Phone" placeholder="전화번호" class="input">
	                </div>
	                <div id="adress" class="content-div">
	                    <input type="text" id="user_Address" name="user_Address" placeholder="주소" class="input">
	                </div>	
	            
					<div id="ok-div" class="container">
						<button type="button" id="ok-button">확인</button>
					</div>
	            </div>
	        </div>
	    </form>
	</section>
 
	<script>	
	document.getElementById("pwChk").style.display = "none";
	
	$("#user_Pwd").on("blur", function(){
		var user_Pwd = $("#user_Pwd").val();
		$.ajax({
			url : "/modify/pw.do",
			type : "get",
			success : function(data){
				console.log(data);
				if(data == user_Pwd){
					$("#pwChk").show();
				}else{
					$("#pwChk").hide();
				}
			},
			error : function(){
				console.log("실패");
			}
		});
		
	});
	
	 $("#ok-button").on("click", function() {
			var user_Pwd = $("#user_Pwd").val();
			var user_Email = $("#user_Email").val();
			var user_Phone = $("#user_Phone").val();
			var user_Address = $("#user_Address").val();
			//먼저 비밀번호가 로그인 되어있는 비밀번호와 같은지 확인
			$.ajax({
				url : "/modify/pw.do",
				type : "get",
				success : function(data){
				console.log(data);
					if(data == user_Pwd){ //데이터와 같은 경우에는 동작 x
						alert("비밀번호가 현재 비밀번호와 일치합니다.");
					}else{ //데이터와 틀린 경우에 
						$.ajax({
							url : "/user/edit.do",
							type : "POST",
							data : {"user_Pwd" : user_Pwd, "user_Email" : user_Email, "user_Phone" : user_Phone, "user_Address" : user_Address },
							success : function(data) {
								if(data == "success") {
									alert("정보수정 성공했습니다.");
									location.replace('/home.do') 
								}else{
									alert("정보수정 실패했습니다.");
								}
							},
							error : function() {
								alert("ajax 실패!");
							}//에러
						});//ajax
					}//else
				},
				error : function(){
					console.log("실패");
				}
			});
			
			
		});  
		
	</script>
</body>
</html>