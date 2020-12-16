$(function () {
  $(function(){
    $(".gallery__contents img").click(function() {
      $("#graydisplay").html($(this).prop('outerHTML'));
      $("#graydisplay").fadeIn(200);
    });
    $("#graydisplay, #graydisplay img").click(function() {
      $("#graydisplay").fadeOut(200);
    });
  });

  $(function() {
    $(".delete").click(function() {
      let result = window.confirm("削除しますか？");
      if (result == true) {
      } else {
        return false;
      }
    })
  })
});
