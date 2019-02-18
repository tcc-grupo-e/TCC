
$(window).scroll(function (event) {
    var st = $(this).scrollTop();
    if (st > lastScrollTop) {
        $("#cabecalho1").fadeOut("fast");
    } else {
        $("#cabecalho1").fadeIn("fast");
    }
    lastScrollTop = st;
});
function Mudancas() {
   
   
      
    
}