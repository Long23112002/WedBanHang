<%--
  Created by IntelliJ IDEA.
  User: long0
  Date: 8/19/2023
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WebLong</title>
    <link rel="stylesheet" type="text/css"
          href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/lib/WOW-master/css/libs/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/dist/css/style.css">
    <style>
        html, body {
            margin: 0;
        }

        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        ::-webkit-scrollbar-thumb {
            background: #555;
            opacity: 50%;
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }

        .btn-product {
            color: black;
            border-radius: 4px;
            border: 0.5px solid #000;
            background: #FFF;
            font-family: Inter;
            padding: 0 16px;
            font-size: 12px;
            font-weight: 400;
            height: 22px;
            line-height: 22px;
        }

        .btn-addtocard {
            border: 0.5px solid #000;
            font-size: 14px;
            padding-top: 3px;
            border-radius: 15px;
            background: #FFF;
        }
    </style>
    <script type="text/javascript">
        window.onload = function () {
            window.setTimeout(
                function () {
                    window.scrollTo(0, 0);
                }, 1
            );
        };
    </script>
</head>

<body>
<div class="modal fade" id="exampleModalcreateaccount" tabindex="-1"
     aria-labelledby="exampleModalLabelcreateaccount" aria-hidden="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h1>Create Account</h1>
                <p>Welcome to INP</p>
                <form  action="${pageContext.request.contextPath}/signin" method="post" id="checkLog" >
                    <input name="name" type="text" class="form-control" placeholder="Full name"
                           aria-label="Full name">
                    <p id="errorName" style="text-align: left ; font-size: 15px ; color: red"></p>

                    <input name="email" type="text" class="form-control" placeholder="Email"
                           aria-label="Email">
                    <p id="errorEmailDK" style="text-align: left ; font-size: 15px ; color: red"></p>

                    <input name="pass" type="password" class="form-control" placeholder="Password"
                           aria-label="Password">
                    <p id="errorPass" style="text-align: left ; font-size: 15px ; color: red"></p>

                    <input name="passConfim" type="password" class="form-control"
                           placeholder="Enter the password" aria-label="Enter the password">
                    <p id="passConfirm" style="text-align: left ; font-size: 15px ; color: red"></p>
                    <input name="phone" type="text" class="form-control" placeholder="Phone"
                           aria-label="Phone">
                    <p id="errorPhone" style="text-align: left ; font-size: 15px ; color: red"></p>
                    <input name="diaChi" type="text" class="form-control" placeholder="Địa chỉ"
                           aria-label="diaChi">
                    <p id="errorDiaChi" style="text-align: left ; font-size: 15px ; color: red"></p>
                    <span> <input type="checkbox"> You agree to the terms and conditions of INP</span>
                    <button type="submit" id="createAccount">Create Account</button>
                    <br>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
