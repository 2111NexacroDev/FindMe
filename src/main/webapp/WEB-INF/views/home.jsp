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
    <link rel="stylesheet" href="../resources/css/main.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../resources/js/common.js" async></script>
</head>

<body>
	<%@ include file="/WEB-INF/layout/inc_header.jsp" %>

    <section id="main">
        <div class="container">
            <figure class="main__img">
                <img src="../resources/img/main_train.png" alt="FIND ME, 철도 전용 분실물센터">
            </figure>
            <form action="/found/SearchbyHash.do" method="get">
                <input type="text" name="keyword" placeholder="무엇을 잃어버리셨나요? #분실물 #찾아가세요" required="required">
                <button type="submit">검색</button>
            </form>
        </div>
    </section>
    
    
	<%@ include file="/WEB-INF/layout/inc_footer.jsp" %>
</body>

</html>