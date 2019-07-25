
function faleConosco() {
    setClickNormal(true);
}

function faleConoscoResponse() {
    setClickResponse(true)
}
$(document).ready(function () {
    if (getClickNormal()) {
        alert("go");
        $('#fale1').click();
    } else {
        alert("not");
    }
    alert("ready");
    SetUserName();
