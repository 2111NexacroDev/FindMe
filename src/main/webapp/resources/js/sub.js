$(function(){
    $(".popup--post__close").on("click", function(){
        $(".popup--post").stop().fadeOut(300);
    });

    // 현재 페이지 하이라이팅
    var pageNo = new URLSearchParams(location.search).get("page");
    if(pageNo != null) {
        $(".ul--paging li:nth-child("+ pageNo +")").addClass("on");
    } else {
        $(".ul--paging li:nth-child(1)").addClass("on");
    }

    $(".sub__nav--depth3 li").on("click", function(){
        $(".sub__nav--depth3 li").not(this).removeClass("active");
        $(this).addClass("active");

        let tableOrder = $(this).index() + 1;
        $(".mileage__table").removeClass("active");
        $(".mileage__table:nth-of-type(" + tableOrder + ")").addClass("active");
    });
});