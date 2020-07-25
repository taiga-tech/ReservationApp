$(function() {
  $(function() {
    $(window).scroll(function() {
      if ($(this).scrollTop() > $(window).height() - 50) {
        $("#List").addClass("fixed");
      } else {
        $("#List").removeClass("fixed");
      }
    });
  });
  $(function() {
    $("#Top").click(function() {
      $("body,html").animate({
        scrollTop: $(".Top").offset().top});
    });
    $("#News").click(function() {
      $("body,html").animate({
        scrollTop: $(".News").offset().top});
    });
    $("#Menu").click(function() {
      $("body,html").animate({
        scrollTop: $(".Menu").offset().top});
    });
    $("#Acsess").click(function() {
      $("body,html").animate({
        scrollTop: $(".Acsess").offset().top});
    });
  });
});
