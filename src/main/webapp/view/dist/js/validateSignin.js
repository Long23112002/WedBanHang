$(document).ready(function() {
    $("#createAccount").click(function(e) {
        e.preventDefault();
        $("#errorName, #errorEmailDK, #errorPass, #passConfirm, #errorPhone, #errorDiaChi").text("");

        var name = $("input[name='name']").val();
        var email = $("input[name='email']").val();
        var pass = $("input[name='pass']").val();
        var passConfirm = $("input[name='passConfim']").val();
        var phone = $("input[name='phone']").val();
        var diaChi = $("input[name='diaChi']").val();
        var termsChecked = $("#termsCheckbox").prop("checked");

        var isValid = true;
        if (!name) {
            $("#errorName").text("Họ tên không được để trống");
            isValid = false;
        }

        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!emailRegex.test(email)) {
            $("#errorEmailDK").text("Email không đúng định dạng");
            isValid = false;
        }

        if(!pass){
            $("#errorPass").text("Mật không được để trống");
            isValid = false;
        }else {
            if (pass.length < 6) {
                $("#errorPass").text("Mật khẩu phải nhiều hơn 6 kí tự");
                isValid = false;
            }
        }

        if(!passConfirm){
            $("#passConfirm").text("Mật khẩu xác nhận không được để trống");
            isValid = false;
        }
        if (pass != passConfirm) {
            $("#ERpassConfirm").text("Mật khẩu không khớp");
            isValid = false;
        }

        var phoneRegex = /^\d{10,}$/;
        if (!phoneRegex.test(phone)) {
            $("#errorPhone").text("Số điện thoại sai định dạng");
            isValid = false;
        }

        if (!diaChi) {
            $("#errorDiaChi").text("Địa chỉ không được để trống");
            isValid = false;
        }

        if (!termsChecked) {
            alert("Bạn phải đồng ý với điều khoản của long");
            isValid = false;
        }

        if (isValid) {
            $("#createAccountForm").submit();
        }
    });
});