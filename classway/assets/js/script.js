$(document).ready(function () {
    $('.xyz').click(function () {
        $('.ul-2').toggleClass('xx');
    });
});


let clicked = true;

function myFunction() {

    if (clicked) {
        document.getElementById('a').style.display = 'none';
        document.getElementById('b').style.display = 'block';

    } else {
        document.getElementById('a').style.display = 'block';
        document.getElementById('b').style.display = 'none';
    }
    clicked = !clicked;
}