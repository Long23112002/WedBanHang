$(document).ready(function() {
    $("#login").click(function(event) {
        event.preventDefault();

        $("#errorMail").text("");
        $("#errorMatKhau").text("");

        var email = $("#email").val();
        var password = $("#matKhau").val();

        var isValid = true;

        if (email === "") {
            $("#errorMail").text("Email không được để trống");
            isValid = false;
        }

        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!emailRegex.test(email)) {
            $("#errorMail").text("Lỗi định dạng email");
            isValid = false;
        }

        if (password === "") {
            $("#errorMatKhau").text("Mật khẩu không được để trống");
            isValid = false;
        }

        if (isValid) {
            $("form").submit();
        }
    });
});