
$('.show-btn').click(function () {
    $('.modal').toggleClass("show");
    $('.show-btn').addClass("disabled");
});
$('.close-icon').click(function () {
    $('.modal').toggleClass("show");
    $('.show-btn').removeClass("disabled");
});
$('.close-btn').click(function () {
    $('.modal').toggleClass("show");
    $('.show-btn').removeClass("disabled");
});
