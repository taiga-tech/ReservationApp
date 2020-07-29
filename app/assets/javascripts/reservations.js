$(function() {

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

  $(function() {
    $(".StylistContents__Box--Item").click(function() {
      let selected = $(this).children("input");
      selected.prop("checked", true);
    });

    $(".Calendar__select").on("click", function() {
      let selectDateTime = $(this).find("input");
      selectDateTime.prop("checked", true);
    });

    $(".Mon").find(".Status__value").append(`<i class="fas fa-minus"></i>`);
    $(".NineTeeen").children(".Sun").find(".Status__value").append(`<i class="fas fa-minus"></i>`);
    $(".NineTeeen").children(".Tue, .Wed, .Thu, .Fri, .Sat").find(".Status__value").append(`<i class="fas fa-phone-alt"></i>`);

    let StatusValue = $(".Status__value");
    StatusValue.each(function(i, val) {
      if ($(val).html() === `<i class="fas fa-minus"></i>`) {
        $(this).parent().parent().find("input").remove("input");
        // $(this).parents().siblings("input").remove("input");
      } else if ($(val).text() === "×") {
        $(this).parent().parent().find("input").remove("input");
        // $(this).parents().siblings("input").remove("input");
      } else if ($(val).html() === `<i class="fas fa-phone-alt"></i>`) {
        $(this).parent().parent().find("input").remove("input");
        // $(this).parents().siblings("input").remove("input");
      } else {
        $(this).append(`<i class="far fa-circle"></i>`)
      }
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
