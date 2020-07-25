$(function() {

  $(".StylistContents__Box--Item").click(function() {
    let selected = $(this).children("input");
    selected.prop("checked", true);
  });

  $(function() {
    $(function() {
      $(window).scroll(function() {
        if ($(this).scrollTop() !== 0 ) {
          $("#LIST").addClass("fixed");
        } else {
          $("#LIST").removeClass("fixed");
        }
      });
    });
    $(".STYLIST").click(function() {
      $("body,html").animate({
        scrollTop: $(".ReservForm__contents--stylist").offset().top});
    });
    $(".DATE").click(function() {
      $("body,html").animate({
        scrollTop: $(".ReservForm__contents--date").offset().top});
    });
    $(".MENU").click(function() {
      $("body,html").animate({
        scrollTop: $(".ReservForm__contents--menu").offset().top});
    });
    $(".USER").click(function() {
      $("body,html").animate({
        scrollTop: $(".ReservForm__contents--user").offset().top});
    });
  });
});































// $(function() {
//   $(function(){
//     function htmlBuild(stylist) {
//       let html =
//         // `<p class="${stylist.image}" id="modalItem">
//         //   ${stylist.name}
//         // </p>`;
//         `<img src="${stylist.image}" data-stylist-name="${stylist.name}">`
//       return(html);
//     };

//     $(".click").one("click", function() {
//       let StylistId = $(this).attr("id");
//       // let dataId = $(this).attr("id");
//       // let modalid = $(".NameModal").find("#modalItem").data("stylist-name");
//       // console.log(modalid)
//       // console.log(StylistId);
//       // console.log(dataId);
//       $.ajax({
//         url: "/reservations/new",
//         type: "get",
//         data: { keyword: StylistId },
//         dataType: "json",
//       })
//       .done(function(data) {
//         // console.log(data);
//         $.each(data, function(i, data) {
//           // if(StylistId == dataId) {
//             // console.log(i + 1);
//             let html = htmlBuild(data);
//             // console.log(html);
//             $(".NameModal").append(html);
//           // }
//           });
//       })
//       .fail(function() {
//         // console.log("error");
//       });
//     });
//   });
// });
