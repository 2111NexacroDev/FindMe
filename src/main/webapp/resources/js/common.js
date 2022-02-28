$(function(){
    $(".nav--gnb > ul > li > a").on("click", function(){
        $(".nav--gnb > ul > li > a").not(this).siblings("ul").stop().slideUp();
        $(this).siblings("ul").stop().slideToggle();
        return false;
    });

    $(".btn--hamburger").on("click", function(){
        $(this).toggleClass("on");
        $(".nav--gnb").toggleClass("on");
    });
});