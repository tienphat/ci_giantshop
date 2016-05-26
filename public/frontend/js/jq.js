
$(function(){
    var url = window.location.pathname; 
    url = url.split("/");
    if(url[2] != "" && url[2] != "trang-chu"){
        $(".slideshow").addClass("hideSlide");
    }
    
});