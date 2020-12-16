$(function() {
  let box = $(".Checkbox__item--hidden");
  box.change(function() {
    let prop = box.attr("checked");
    console.log(prop);
    if (prop == true) {
      $(red).addClass("red");
    } else {
      $(red).removeClass("red");
    }
  });
});
