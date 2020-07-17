$(function() {
  $(window).scroll(function() {
    if ($(this).scrollTop() > $(window).height() - 50) {
      $("#List").addClass("flexd");
    } else {
      $("#List").removeClass("flexd");
    }
  })
});
