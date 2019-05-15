// JavaScript Document
window.onload = mudaImg;
var lastScrollTop = 0;
//// A linha abaixo cria os Arrays
img = new Array('0', '1', '2');

//// A linha abaixo cria uma variavel iniciando do // número 0

var i = 0;
//// A linha abaixo define a quantidade de tempo para mudar de uma imagem para outra
setInterval("mudaImg()", 6000);

// A linha abaixo cria uma função
function mudaImg() {






    if (i === img.length - 1) {

        i = 0;

    } else {

        i++;


    }


 

    document.getElementById("mainslider").innerHTML = "<img src=\"img/slide" + img[i] + ".jpg\" alt=\"imagem da empresa\" class=\"foto1\">";
    $("#mainslider img").fadeIn(1000, "linear");
   

}

$(document).ready(function () {
$('div.subslider').each(function () {
    var $obj = $(this);

    $(window).scroll(function () {
        var yPos = -($(window).scrollTop() / $obj.data('speed'));

        var bgpos = '50% ' + yPos + 'px';

        $obj.css('background-position', bgpos);

    });
    });
});