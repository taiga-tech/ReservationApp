$(function() {
  let methods = {
    email: function (value, element) {
      return this.optional(element) || /^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$/.test(value);
    },
    password: function (value, element) {
      return this.optional(element) || /^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}$/i.test(value);
    },
    zipcode: function (value, element) {
      return this.optional(element) || /^\d{3}-?\d{4}$/.test(value);
    },
    price: function (value, element) {
      return this.optional(element) || 	/^[3-9][0-9]{2}|[1-9][0-9]{3,6}$/.test(value);
    },
    number: function (value, element) {
      return this.optional(element) || /^\d+$/.test(value);
    },
    cvc: function (value, element) {
      return this.optional(element) || /^\d{3,4}$/.test(value);
    },
    kana: function (value, element) {
      return this.optional(element) || /^[\u3041-\u3096]+$/.test(value);
    },
    zenkaku: function (value, element) {
      return this.optional(element) || /^[^\x01-\x7E\xA1-\xDF]+$/.test(value);
    },
  }

  $.each(methods, function(key) {
    $.validator.addMethod(key, this);
  });

  $("#new_staff").validate({
    rules: {
      "staff[name]": {
        required: true
      },
      "staff[email]": {
        required: true,
        email: true
      },
      "staff[password]": {
        required: true,
        password: true,
      },
      "staff[password_confirmation]": {
        required: true,
        equalTo: 'input[name="staff[password]"]'
      },
    },
    messages: {
      "staff[name]": {
        required: "ユーザーネームを入力してください"
      },
      "staff[email]": {
        required: "メールアドレスを入力してください",
      },
      "staff[password]": {
        required: "パスワードを入力してください",
      },
      "staff[password_confirmation]": {
        required: "確認用パスワードを入力してください",
        equalTo: "パスワードが一致しません"
      },
    },
    errorClass: "devise-invalid",
    errorElement: "p",
    valudClass: "valid",
  });
  $("#staff_name", "#staff_email", "#staff_password").blur(function() {
    $(this).valid();
  });

  $("#new_reservation").validate({
    rules: {
      "reservation[name]": {
        required: true,
        zenkaku: true,
      },
      "reservation[email]": {
        required: true,
        email: true,
      },
      "reservation[tel]": {
        required: true,
      },
    },
    errorClass: "invalid",
    errorElement: "p",
    valudClass: "valid",
  });

  $("#form_menu").validate({
    rules: {
      "menu[name]": {
        required: true,
      },
      "menu[price]": {
        required: true,
      },
      "menu[category_ids][]": {
        required: true,
      },
    },
    errorClass: "invalid",
    errorElement: "p",
    valudClass: "valid",
    errorPlacement: function(error, element){
      if (element.attr("name") == "menu[category_ids][]" ) {
        error.insertBefore(".Checkbox");
      } else {
        error.insertAfter(element)
      }
    }
  });
});
