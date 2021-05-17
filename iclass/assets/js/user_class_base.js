

$(document).ready(function() {
    $('.btn-join-class').click(function() {
        $(".container-main").load('/classes/user_class_base #user_class_join');
    });

    $('.btn-create-class').click(function() {
        $(".container-main").load("create-class.html");
    });
});