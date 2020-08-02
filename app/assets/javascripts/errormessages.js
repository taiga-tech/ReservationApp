$(function() {
  let gray = $(".gray").parent().parent().parent().css("background-color");
  $(".error").children("p").css("background-color", gray)
  let white = $(".white").parent().parent().css("background-color");
  $(".error").children("p").css("background-color", white)
});
