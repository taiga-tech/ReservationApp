$(function() {
  $(".Gallery__contents--item").slick({
    autoplay: true,
    autoplaySpeed: 4000,
    fade: true,
    speed: 800,
    cssEase: 'cubic-bezier(.645, .045, .355, 1)'
  });
  $(function() {
    let modal = $(".Reservation__modal")
    let html =
            `<div class="Reservation__modal">
              <div class="Reservation__modal--title">
                <h5>ご注意</h5>
              </div>
              <div class="Reservation__modal--text">
                <p>
                  ※当日のご予約はお電話でのみ承ります（受付時間：9:00 - 17:00）
                </p>
                <p>
                  ※施術中はお電話をお受けできないことがございます。<br>　その場合はメッセージにお名前・ご連絡先電話番号をお残しください。<br>　折り返しご連絡させていただきます。
                </p>
                <p>
                  ※施術当日のキャンセルは、キャンセル料を頂戴する場合がございます。<br>　予めご了承ください。
                </p>
              </div>
            </div>`;
    $(".Reservation__contents--Btn").hover(
      function () {
        modal.append(html);
      },
      function () {
        modal.children().remove().fadeIn(5000);
      }
    );
  });
});
