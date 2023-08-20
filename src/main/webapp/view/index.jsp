<%--
  Created by IntelliJ IDEA.
  User: long0
  Date: 8/18/2023
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WebLong</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
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
        function showMesLogin(message) {
            alert(message);
        }

        function showMesSignin(x){
            alert(x);
        }
    </script>
</head>
<body data-bs-spy="scroll" data-bs-target="#list-example" data-bs-smooth-scroll="true" class="scrollspy-example"
      tabindex="0">
<header class="container">
    <div class="container">
        <div class="row d-flex">
            <div class="col-2 header-left wow animate__backInDown">
                <svg width="29" height="18" viewBox="0 0 29 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                            d="M2.84446 3.09091V14H1.19851V3.09091H2.84446ZM14.0465 3.09091V14H12.5337L6.98864 5.99929H6.88743V14H5.24148V3.09091H6.76491L12.3153 11.1023H12.4165V3.09091H14.0465ZM16.4475 14V3.09091H20.336C21.1847 3.09091 21.8879 3.24538 22.4454 3.55433C23.0029 3.86328 23.4202 4.28587 23.6972 4.82209C23.9742 5.35476 24.1127 5.9549 24.1127 6.62251C24.1127 7.29368 23.9724 7.89737 23.6919 8.43359C23.4149 8.96626 22.9958 9.38885 22.4347 9.70135C21.8772 10.0103 21.1759 10.1648 20.3307 10.1648H17.6567V8.76918H20.1816C20.7178 8.76918 21.1528 8.67685 21.4866 8.49219C21.8204 8.30398 22.0654 8.0483 22.2217 7.72514C22.3779 7.40199 22.4561 7.03445 22.4561 6.62251C22.4561 6.21058 22.3779 5.84482 22.2217 5.52521C22.0654 5.20561 21.8186 4.95526 21.4813 4.77415C21.1475 4.59304 20.7071 4.50249 20.1602 4.50249H18.0935V14H16.4475Z"
                            fill="#FFAB6F"/>
                    <circle cx="26.5" cy="11.5" r="2.5" fill="#FFAB6F"/>
                    <circle cx="28" cy="5" r="1" fill="#FFAB6F"/>
                </svg>
            </div>
            <div class="col-4 wow animate__backInDown">
                <div class="header-mid">
                    <a href="#Home">Home</a>
                    <a href="#AboutUs">About</a>
                    <a href="#Product">Product</a>
                    <a href="#Blog">Blog</a>
                    <a href="#Contant">Contant</a>
                </div>
            </div>
            <div class="col-6 wow animate__backInDown">
                <div class="header-right float-end">
                    <div href="" class="search-box">
                        <button class="btn-search">
                            <svg width="31" height="21" viewBox="0 0 31 21" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M19.3469 9.0306C19.3469 11.9667 16.9667 14.3469 14.0306 14.3469C11.0945 14.3469 8.71426 11.9667 8.71426 9.0306C8.71426 6.09448 11.0945 3.71429 14.0306 3.71429C16.9667 3.71429 19.3469 6.09448 19.3469 9.0306ZM18.2453 14.205C17.0962 15.1421 15.629 15.704 14.0306 15.704C10.3449 15.704 7.35712 12.7162 7.35712 9.0306C7.35712 5.34495 10.3449 2.35715 14.0306 2.35715C17.7162 2.35715 20.704 5.34495 20.704 9.0306C20.704 10.629 20.1421 12.0962 19.2049 13.2453L22.7902 16.8306C23.0552 17.0956 23.0552 17.5252 22.7902 17.7902C22.5252 18.0552 22.0955 18.0552 21.8305 17.7902L18.2453 14.205Z"
                                      fill="black"/>
                            </svg>
                        </button>
                        <input type="text" class="input-search" placeholder="How to search...">
                    </div>

                    <a href="" class="giohang" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
                       aria-controls="offcanvasRight">
                        <svg width="31" height="22" viewBox="0 0 31 22" fill="none"
                             xmlns="http://www.w3.org/2000/svg" data-bs-toggle="tooltip" data-bs-placement="bottom"
                             data-bs-title="2">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M14.909 3.51167C13.7918 3.51167 13.0254 4.30974 13.0254 5.1313V5.77917H16.7925V5.1313C16.7925 4.30974 16.0261 3.51167 14.909 3.51167ZM11.5137 5.1313V5.77917H10.3824C8.78138 5.77917 7.45794 7.0273 7.36425 8.62557L7.00793 14.7037C6.85525 17.3082 8.9262 19.5041 11.5352 19.5041H18.5461C21.1551 19.5041 23.226 17.3082 23.0734 14.7037L22.717 8.62557C22.6233 7.0273 21.2999 5.77917 19.6989 5.77917H18.3042V5.1313C18.3042 3.32899 16.7072 2 14.909 2C13.1107 2 11.5137 3.32899 11.5137 5.1313ZM19.6989 7.29084H10.3824C9.58189 7.29084 8.92017 7.9149 8.87332 8.71404L8.51701 14.7921C8.41522 16.5285 9.79586 17.9924 11.5352 17.9924H18.5461C20.2854 17.9924 21.6661 16.5285 21.5643 14.7921L21.208 8.71404C21.1611 7.9149 20.4994 7.29084 19.6989 7.29084ZM12.4011 8.33449C12.8174 8.3345 13.1551 8.67111 13.1569 9.08703L13.1569 9.08725L13.1572 9.09867C13.1576 9.1109 13.1584 9.132 13.1603 9.16067C13.164 9.21826 13.1717 9.30492 13.1877 9.41066C13.2201 9.62594 13.2836 9.90026 13.4032 10.1645C13.5222 10.4276 13.6857 10.6569 13.9073 10.8202C14.1202 10.9771 14.4305 11.1059 14.9085 11.1059C15.4691 11.1059 15.8393 10.9679 16.0915 10.7998C16.3484 10.6285 16.5291 10.3948 16.6574 10.138C16.7873 9.87828 16.856 9.60941 16.8911 9.3991C16.9083 9.29573 16.9166 9.21125 16.9206 9.15556C16.9226 9.12785 16.9234 9.10766 16.9238 9.09627L16.9241 9.08619C16.9263 8.67066 17.2639 8.33449 17.6799 8.33449C18.0973 8.33449 18.4357 8.67289 18.4357 9.09033H17.6799C18.4357 9.09033 18.4357 9.09071 18.4357 9.0911L18.4357 9.09194L18.4357 9.09381L18.4357 9.09834L18.4356 9.11047C18.4354 9.1199 18.4351 9.13202 18.4346 9.14663C18.4337 9.17584 18.4318 9.2152 18.4284 9.26326C18.4216 9.35914 18.4082 9.49116 18.3822 9.64761C18.3306 9.95693 18.2261 10.3809 18.0095 10.814C17.7915 11.2501 17.4525 11.7092 16.93 12.0576C16.4027 12.4091 15.7336 12.6175 14.9085 12.6175C14.1329 12.6175 13.5028 12.3999 13.0106 12.0372C12.5269 11.6808 12.2203 11.2173 12.0259 10.7875C11.832 10.3589 11.7388 9.9404 11.6929 9.63605C11.6697 9.48197 11.6578 9.35212 11.6517 9.25815C11.6487 9.21104 11.6471 9.1726 11.6462 9.14423C11.6458 9.13004 11.6456 9.11834 11.6454 9.1093L11.6453 9.09776L11.6453 9.09352L11.6453 9.09179L11.6453 9.09103C11.6453 9.09067 11.6453 9.09033 12.4011 9.09033L11.6453 9.09033C11.6453 8.67289 11.9837 8.33449 12.4011 8.33449Z"
                                  fill="#303030"/>
                        </svg>
                    </a>

                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight"
                         aria-labelledby="offcanvasRightLabel">
                        <div class="offcanvas-header">
                            <h1 class="offcanvas-title" id="offcanvasRightLabel">Giỏ hàng <i
                                    class="fa-solid fa-basket-shopping"></i></h1>
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                    aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">
                            <div class="sanphamdachon">
                                <div class="sanphamdachon-item">
                                    <img src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (1).png"
                                         alt="">
                                    <h5><strong class="doimautt">Tên sản phẩm</strong> <br> 2 x 50.000 đ</h5>
                                    <button><i class="fa-solid fa-circle-xmark"></i></button>
                                </div>
                                <div class="sanphamdachon-item">
                                    <img src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (2).png"
                                         alt="">
                                    <h5><strong class="doimautt">Tên sản phẩm</strong> <br> 2 x 50.000 đ</h5>
                                    <button><i class="fa-solid fa-circle-xmark"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="offcanvas-footer">
                            <p><b>Tổng tiền</b> <span>$ 600.000đ</span></p>
                            <a href="">Thanh toán</a>
                        </div>
                    </div>
                    <div class="dropdown d-flex">
                        <c:if test="${tenKhachHang == null}">
                            <button type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17"
                                     fill="none">
                                    <path d="M1.36652 16.18C1.669 12.9267 4.40648 10.38 7.73877 10.38H9.73877C13.0711 10.38 15.8085 12.9267 16.111 16.18H1.36652Z"
                                          stroke="black" stroke-width="1.2"/>
                                    <circle cx="9.01877" cy="4.5" r="3.68" stroke="black" stroke-width="1.2"/>
                                </svg>
                            </button>
                        </c:if>

                        <c:if test="${tenKhachHang != null}">
                         <p>${tenKhachHang}<p>
                         <a href="${pageContext.request.contextPath}/logout">Logout</a>
                        </c:if>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" type="button" data-bs-toggle="modal"
                                   data-bs-target="#exampleModal">
                                <i class="fa-solid fa-right-to-bracket"></i> Login</a>

                            </li>
                            <li><a class="dropdown-item" href="#" data-bs-toggle="modal"
                                   data-bs-target="#exampleModalcreateaccount">
                                <i class="fa-solid fa-user-plus"></i> Create Account</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Madal create account -->
                <jsp:include page="CreateForm.jsp"/>
                <!-- Modal -->
                <jsp:include page="LoginForm.jsp"/>
            </div>
        </div>
    </div>
</header>
<aside>
    <div class="container">
        <div class="aside1 d-flex " id="Home">
            <div class="img1 wow animate__backInLeft">
                <img src="${pageContext.request.contextPath}/view/img/aside1/Vector 2.png" alt="">

            </div>
            <div class="img2 wow animate__backInLeft">
                <img src="${pageContext.request.contextPath}/view/img/aside1/Vector 3.png" alt="">

            </div>
            <div class="img3 wow animate__backInRight">
                <img src="${pageContext.request.contextPath}/view/img/aside1/Rectangle 4.png" alt="">

            </div>
            <div class="img4 wow animate__backInDown">
                <a href="#aboutus">
                    <svg width="36" height="137" viewBox="0 0 36 137" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M18 62L18 129" stroke="black"/>
                        <path d="M18 128.118L18.3118 128.274L18 128.586L17.6882 128.274L18 128.118Z" stroke="black"
                              stroke-width="2"/>
                        <path
                                d="M16.1115 45.7674C15.7417 45.8084 15.4549 45.9797 15.2512 46.2814C15.0449 46.5831 14.9413 46.9631 14.9404 47.4214C14.9398 47.7496 14.9913 48.0335 15.095 48.2733C15.1961 48.5131 15.3364 48.6995 15.5159 48.8327C15.6927 48.9632 15.8944 49.0287 16.1209 49.0292C16.3111 49.0295 16.4752 48.9856 16.6134 48.8973C16.7516 48.8064 16.8677 48.6881 16.9617 48.5425C17.0531 48.3942 17.1303 48.2355 17.1931 48.0664C17.2533 47.8972 17.3031 47.7345 17.3425 47.5784L17.5471 46.7975C17.6101 46.5424 17.6952 46.2808 17.8025 46.0128C17.9098 45.7448 18.0509 45.4964 18.2258 45.2675C18.4007 45.0387 18.6172 44.8542 18.8753 44.7141C19.1333 44.5713 19.4421 44.5003 19.8015 44.501C20.2546 44.5019 20.6567 44.6198 21.0078 44.8549C21.3589 45.0873 21.6356 45.4251 21.8379 45.8682C22.0402 46.3086 22.1408 46.8414 22.1396 47.4664C22.1384 48.0653 22.0424 48.5834 21.8514 49.0205C21.6605 49.4577 21.3903 49.7996 21.0409 50.0463C20.6889 50.2931 20.2719 50.429 19.7901 50.4541L19.7924 49.2432C20.0815 49.2203 20.3226 49.127 20.5156 48.9633C20.706 48.797 20.8484 48.585 20.9426 48.3274C21.0342 48.0672 21.0804 47.7821 21.081 47.4722C21.0816 47.131 21.0288 46.8276 20.9225 46.5617C20.8137 46.2933 20.663 46.0821 20.4706 45.9281C20.2756 45.774 20.0479 45.6968 19.7875 45.6963C19.5505 45.6958 19.3563 45.7632 19.205 45.8983C19.0537 46.0308 18.9284 46.2116 18.829 46.4406C18.7296 46.6669 18.6419 46.9233 18.5658 47.2096L18.3062 48.1544C18.1305 48.7947 17.873 49.302 17.5338 49.6764C17.1945 50.0481 16.7463 50.2335 16.189 50.2324C15.728 50.2315 15.3259 50.1058 14.9827 49.8551C14.6394 49.6045 14.3731 49.2654 14.1838 48.838C13.9919 48.4105 13.8965 47.9286 13.8975 47.3921C13.8985 46.8504 13.9945 46.3728 14.1854 45.9591C14.3763 45.5428 14.6386 45.2151 14.9724 44.9762C15.3036 44.7372 15.684 44.613 16.1137 44.6034L16.1115 45.7674ZM22.1464 37.7183C22.1453 38.2991 22.0128 38.7988 21.749 39.2176C21.4826 39.6337 21.1161 39.9534 20.6495 40.1764C20.183 40.3995 19.6489 40.5105 19.0473 40.5093C18.438 40.5082 17.9004 40.3926 17.4347 40.1625C16.9664 39.9324 16.6011 39.6088 16.3389 39.1917C16.0767 38.7745 15.9461 38.2834 15.9472 37.7183C15.948 37.2625 16.0334 36.8564 16.2034 36.5C16.3707 36.1435 16.6057 35.8562 16.9082 35.6381C17.2107 35.4173 17.5638 35.2864 17.9675 35.2455L17.9653 36.3823C17.684 36.4442 17.4415 36.587 17.238 36.8106C17.0344 37.0315 16.9323 37.3282 16.9316 37.7006C16.931 38.0261 17.0164 38.3114 17.1878 38.5566C17.3566 38.7991 17.5984 38.9883 17.9132 39.1243C18.2255 39.2604 18.5952 39.3288 19.0222 39.3296C19.4597 39.3304 19.8375 39.2647 20.1554 39.1325C20.4734 39.0003 20.7198 38.8133 20.8948 38.5714C21.0697 38.327 21.1575 38.0394 21.1581 37.7086C21.1586 37.4873 21.1186 37.2867 21.0382 37.1069C20.9552 36.9244 20.837 36.7718 20.6836 36.6491C20.5302 36.5239 20.3455 36.4363 20.1294 36.3864L20.1316 35.2497C20.5195 35.2921 20.8656 35.419 21.1699 35.6305C21.4742 35.8421 21.7132 36.1251 21.887 36.4796C22.0608 36.8315 22.1473 37.2444 22.1464 37.7183ZM22.0379 31.0931L16.0379 31.0817L16.0401 29.9528L16.9932 29.9546L16.9933 29.8921C16.6706 29.7821 16.4171 29.5889 16.2327 29.3125C16.0457 29.0335 15.9526 28.7183 15.9533 28.3667C15.9534 28.2938 15.9562 28.2078 15.9616 28.1089C15.967 28.0073 15.9736 27.9279 15.9815 27.8706L17.0987 27.8728C17.0856 27.9196 17.0711 28.0029 17.0553 28.1227C17.0368 28.2424 17.0275 28.3622 17.0273 28.482C17.0267 28.7581 17.0849 29.0043 17.2016 29.2206C17.3158 29.4344 17.4756 29.604 17.6811 29.7294C17.884 29.8547 18.1157 29.9177 18.3761 29.9182L22.0401 29.9252L22.0379 31.0931ZM22.1774 21.4332C22.1763 21.9957 22.0465 22.4864 21.7879 22.9051C21.5293 23.3239 21.168 23.6487 20.704 23.8796C20.24 24.1105 19.6981 24.2254 19.0783 24.2242C18.4559 24.223 17.9119 24.1061 17.4462 23.8734C16.9805 23.6408 16.6191 23.3146 16.3621 22.8948C16.1051 22.475 15.9771 21.9839 15.9782 21.4214C15.9793 20.8589 16.1091 20.3683 16.3677 19.9495C16.6263 19.5307 16.9889 19.2059 17.4555 18.975C17.9221 18.7441 18.4666 18.6293 19.089 18.6305C19.7088 18.6316 20.2502 18.7485 20.7133 18.9812C21.1764 19.2139 21.5365 19.5401 21.7935 19.9598C22.0505 20.3796 22.1785 20.8707 22.1774 21.4332ZM21.1969 21.4274C21.1976 21.0629 21.1019 20.7606 20.9096 20.5206C20.7174 20.2807 20.4612 20.1031 20.1411 19.9879C19.821 19.8701 19.4683 19.8109 19.0828 19.8101C18.7 19.8094 18.3483 19.8673 18.0278 19.9839C17.7047 20.0979 17.4452 20.2745 17.2495 20.5137C17.0537 20.7529 16.9555 21.0548 16.9548 21.4194C16.9541 21.7866 17.0511 22.0914 17.246 22.334C17.4409 22.5739 17.6996 22.7528 18.0223 22.8706C18.3424 22.9858 18.6939 23.0438 19.0767 23.0445C19.4621 23.0452 19.8151 22.9886 20.1356 22.8746C20.4561 22.7581 20.713 22.5802 20.9061 22.341C21.0993 22.0991 21.1962 21.7946 21.1969 21.4274ZM14.0719 13.2381L22.0719 13.2533L22.0697 14.4213L14.0697 14.406L14.0719 13.2381ZM14.0827 7.5877L22.0826 7.60293L22.0804 8.7709L14.0804 8.75567L14.0827 7.5877Z"
                                fill="black"/>
                    </svg>
                </a>

            </div>
            <div class="aside1-content">
                <h1 class="wow animate__backInLeft">Modern Decor</h1>
                <p class="wow animate__backInLeft">Modern decoration designs a style that combines moder trends and
                    technology to create a unique
                    living and a working space delicate</p>
                <button class="wow animate__backInLeft">More</button>
            </div>
        </div>
        <div class="aboutus wow animate__backInDown " id="AboutUs">
            <div class="row">
                <div class="col">
                    <h1>About Us</h1>
                </div>
            </div>
            <div class="row ">
                <div class="aboutus-content d-flex">
                    <div class="col-7 aboutus-content-left">
                        <p class="col-9 wow animate__backInLeft">
                            At INP Decor we are passionate about creating stunning decorativeproducts that reflect
                            your unique style and personality.<br><br>With 10 years of industry experience our
                            talented design team has combined creativity and expertise to make your vision a
                            reality Our philosophy revolves around capturing the essence of our customers' From
                            residential to commercial projects we are committed to providing exceptional design
                            solutions that exceed your expectationsAt INP Decor, we believe that each space has its
                            own unique character
                        </p>
                        <img class="wow animate__backInUp"
                             src="${pageContext.request.contextPath}/view/img/AboutUs/Rectangle 8.png" alt="">
                    </div>
                    <div class="col-5 float-end aboutus-content-right">
                        <img class="wow animate__backInUp"
                             src="${pageContext.request.contextPath}/view/img/AboutUs/Rectangle 6.png" alt="">
                        <p class="wow animate__backInRight">At INP Decor, we believe that each space has its own unique
                            character waiting to be
                            spoken about and make their vision come true through exceptional design</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="aside-product" id="product1">
            <h1 id="product" class="wow animate__backInDown">Product</h1>
            <h2 class="wow animate__backInDown">Our collection of about decoration vintage</h2>
            <div class="repon-product-title wow animate__backInDown">
                <ul class="nav nav-pills navbtnloc" id="pills-tab" role="tablist">
                    <li class="nav-item wow animate__backInDown" role="presentation">
                        <button class="btn btn-product active" id="pills-All-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-All" type="button" role="tab" aria-controls="pills-All"
                                aria-selected="true" autofocus="true">All
                        </button>
                    </li>
                    <li class="nav-item wow animate__backInDown" role="presentation">
                        <button class="btn btn-product" id="pills-Candle-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-Candle" type="button" role="tab" aria-controls="pills-Candle"
                                aria-selected="false">Candle
                        </button>
                    </li>
                    <li class="nav-item wow animate__backInDown" role="presentation">
                        <button class="btn btn-product" id="pills-Lamp-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-Lamp" type="button" role="tab" aria-controls="pills-Lamp"
                                aria-selected="false">Lamp
                        </button>
                    </li>
                    <li class="nav-item wow animate__backInDown" role="presentation">
                        <button class="btn btn-product" id="pills-Flower-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-Flower" type="button" role="tab" aria-controls="pills-Flower"
                                aria-selected="false">Flower vase
                        </button>
                    </li>
                </ul>
            </div>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-All" role="tabpanel"
                     aria-labelledby="pills-All-tab" tabindex="0">
                    <div class="btn-llocsp" id="locspnb1">
                        <div class="btn-locsp_item btn-locsp-All" title="All">
                            <div class="row">
                                <div class="col-xl-3 col-lg-6 col-12">
                                    <div class="card-sp wow animate__fadeInDown">
                                        <div class="repon-card-sp ">
                                            <div class="imgcard lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18.png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Cloud flower beautiful</h5>
                                                <p class="card-text">$20.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-12">

                                    <div class="card-sp wow animate__fadeInDown">
                                        <div class="repon-card-sp ">
                                            <div class="imgcard lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (1).png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Fern plug jar silver</h5>
                                                <p class="card-text">$32.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-xl-3 col-lg-6 col-12">

                                    <div class="card-sp wow animate__fadeInDown">
                                        <div class="repon-card-sp  hot">
                                            <div class="imgcard lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (2).png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Flower basket vintage</h5>
                                                <p class="card-text">$26.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-xl-3 col-lg-6 col-12">

                                    <div class="card-sp wow animate__fadeInDown">
                                        <div class="repon-card-sp  hot">
                                            <div class="imgcard lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (3).png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Statues and jars</h5>
                                                <p class="card-text">$20.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-3 col-lg-6 col-12">

                                    <div class="card-sp wow animate__fadeInDown">
                                        <div class="repon-card-sp  ">
                                            <div class="imgcard lockscaleimg lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (4).png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Scented cup candle</h5>
                                                <p class="card-text">$22.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-xl-3 col-lg-6 col-12">

                                    <div class="card-sp wow animate__fadeInDown">
                                        <div class="repon-card-sp  hot">
                                            <div class="imgcard lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (5).png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Rectangular table lamp</h5>
                                                <p class="card-text">$32.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-xl-3 col-lg-6 col-12">

                                    <div class="card-sp  wow animate__fadeInDown">
                                        <div class="repon-card-sp hot">
                                            <div class="imgcard lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (6).png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Baby flower pot</h5>
                                                <p class="card-text">$28.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-xl-3 col-lg-6 col-12">

                                    <div class="card-sp wow animate__fadeInDown">
                                        <div class="repon-card-sp">
                                            <div class="imgcard lockscaleimg">
                                                <img class="scaleimg"
                                                     src="${pageContext.request.contextPath}/view/img/product/Rectangle 18 (7).png"
                                                     alt="">
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">Decorative jars</h5>
                                                <p class="card-text">$26.00</p>
                                                <a href="#" class="btn btn-addtocard">Add To Cart</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="pills-Candle" role="tabpanel" aria-labelledby="pills-Candle-tab"
                     tabindex="0">
                    <div class="btn-llocsp" id="locspnb">
                        <div class="btn-locsp_item btn-locsp-Candle" title="Candle">

                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="aside-ourblog wow animate__backInDown" id="Blog">
            <h1 class="wow animate__backInDown">Our Blog</h1>
            <div class="content-ourblog">
                <div class="your-class">
                    <div class="card wow animate__flipInY" style="width: 18rem;">
                        <img src="${pageContext.request.contextPath}/view/img/ourblog/Rectangle 30.png"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <div class="card-text">
                                <span>Jul 26,2020</span>
                                <h3>Luxury decorative products</h3>
                                <p>At INP Decor we are passionate about creating stunning
                                    Decorative products that reflect your</p>
                            </div>
                        </div>
                    </div>
                    <div class="card wow animate__flipInY" style="width: 18rem;">
                        <img src="${pageContext.request.contextPath}/view/img/ourblog/Rectangle 31.png"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <div class="card-text">
                                <span>Jul 20,2022</span>
                                <h3>Decorative cup candle </h3>
                                <p>Our philosophy revolves around capturing the essence
                                    From residential to commercial projects</p>
                            </div>
                        </div>
                    </div>
                    <div class="card wow animate__flipInY" style="width: 18rem;">
                        <img src="${pageContext.request.contextPath}/view/img/ourblog/Rectangle 32.png"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <div class="card-text">
                                <span>Jul 28,2023</span>
                                <h3>Decorative modern lights</h3>
                                <p>Our talented design team has combined creativity your
                                    Come true through exceptional design</p>
                            </div>
                        </div>
                    </div>
                    <div class="card wow animate__flipInY" style="width: 18rem;">
                        <img src="${pageContext.request.contextPath}/view/img/ourblog/Rectangle 32.png"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <div class="card-text">
                                <span>Jul 28,2023</span>
                                <h3>Decorative modern lights</h3>
                                <p>Our talented design team has combined creativity your
                                    Come true through exceptional design</p>
                            </div>
                        </div>
                    </div>
                    <div class="card wow animate__flipInY" style="width: 18rem;">
                        <img src="${pageContext.request.contextPath}/view/img/ourblog/Rectangle 32.png"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <div class="card-text">
                                <span>Jul 28,2023</span>
                                <h3>Decorative modern lights</h3>
                                <p>Our talented design team has combined creativity your
                                    Come true through exceptional design</p>
                            </div>
                        </div>
                    </div>
                    <div class="card wow animate__flipInY" style="width: 18rem;">
                        <img src="${pageContext.request.contextPath}/view/img/ourblog/Rectangle 32.png"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <div class="card-text">
                                <span>Jul 28,2023</span>
                                <h3>Decorative modern lights</h3>
                                <p>Our talented design team has combined creativity your
                                    Come true through exceptional design</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</aside>
<footer class="wow animate__bounceInDown" id="Contant">
    <div class="container">
        <div class="row footer-top">
            <div class="col-2 col-chung ">
                <a href="" class="wow animate__zoomIn"><b>Information</b></a><br>
                <a href="">About Us</a><br>
                <a href="">Delivery Information</a><br>
                <a href="">Privacy Policy</a><br>
                <a href="">Contact Us</a><br>
                <a href="">Returns</a><br>
            </div>
            <div class="col-2 col-chung">
                <a href="" class="wow animate__zoomIn"><b>Extras</b></a><br>
                <a href="">Brands</a><br>
                <a href="">Gift Certificates</a><br>
                <a href="">Affiliate</a><br>
                <a href="">Specials</a><br>
                <a href="">My Account</a><br>
            </div>
            <div class="col-4 col-chung">
                <a href="" class="wow animate__zoomIn"><b>Contact Us</b></a><br>
                <a href="">Address: 26 Seoul -Jeju Korea 11602 </a><br>
                <a href="">Phone: (123) 456 - 7890</a><br>
                <a href="">Email: contact@decorinpdesign.com</a><br>
                <a href=""><img src="${pageContext.request.contextPath}/view/img/footer/M.png"
                                style="margin-right: 12px;" alt=""></a>
                <a href=""><img src="${pageContext.request.contextPath}/view/img/footer/Fb.png"
                                style="margin-right: 12px;" alt=""></a>
                <a href=""><img src="${pageContext.request.contextPath}/view/img/footer/Yb.png"
                                style="margin-right: 12px;" alt=""></a>
                <a href=""><img src="${pageContext.request.contextPath}/view/img/footer/P.png" alt=""></a>
            </div>
            <div class="col-4 col-chung footer-top_Newslatter">
                <a href="" class="wow animate__zoomIn"><b>Newslatter</b></a><br>
                <p>We recommended you to our newspaper, enter your email below to get our update about us.</p><br>
                <input type="text" placeholder="Enter you email address here..."><br>
                <button>Send Now
                    <svg xmlns="http://www.w3.org/2000/svg" width="11" height="9" viewBox="0 0 11 9" fill="none">
                        <path d="M1 4.5L9.16667 4.5" stroke="#424242" stroke-width="1.5" stroke-linecap="round"
                              stroke-linejoin="round"/>
                        <path d="M6.08337 1L10.0834 4.5L6.08337 8" stroke="#424242" stroke-width="1.5"
                              stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>
            </div>
        </div>
        <div class="footer-bottom d-flex justify-content-between">
            <div class="footer-bottom-left">
                <a href="" class="wow animate__backInLeft">Copyright
                    <svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_84_266)">
                            <path d="M4.8 0C2.15344 0 0 2.15344 0 4.8C0 7.44656 2.15344 9.6 4.8 9.6C7.44656 9.6 9.6 7.44656 9.6 4.8C9.6 2.15344 7.44656 0 4.8 0ZM4.8 8.96985C2.50051 8.96985 0.630154 7.09908 0.630154 4.8C0.630154 2.50092 2.50051 0.630154 4.8 0.630154C7.09949 0.630154 8.96985 2.50092 8.96985 4.8C8.96985 7.09908 7.09908 8.96985 4.8 8.96985Z"
                                  fill="#555555"/>
                            <path d="M4.92349 6.37381C3.7436 6.37381 3.28657 5.54838 3.2796 4.7574C3.27262 3.95945 3.77067 3.09997 4.92349 3.09997C5.33949 3.09997 5.76247 3.24315 6.07631 3.55002L6.67652 2.97032C6.18544 2.48622 5.5717 2.24048 4.9239 2.24048C3.19836 2.24048 2.38688 3.50899 2.39344 4.75699C2.40042 5.99843 3.15036 7.21894 4.9239 7.21894C5.61272 7.21894 6.24698 6.99371 6.73806 6.50961L6.12431 5.88889C5.81047 6.20274 5.3399 6.37299 4.9239 6.37299L4.92349 6.37381Z"
                                  fill="#555555"/>
                        </g>
                        <defs>
                            <clipPath id="clip0_84_266">
                                <rect width="9.6" height="9.6" fill="white"/>
                            </clipPath>
                        </defs>
                    </svg>
                    Decoration Design. All Right Reserved </a>
            </div>
            <div class="footer-bottom-right wow animate__backInRight">
                <a href="">Order History</a>
                <a href="">Wish List</a>
                <a href="">Newsletter</a>
            </div>
        </div>
    </div>
</footer>



<div class="backtotop">
    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
</div>
<script>
    let mybutton = document.getElementById("myBtn");
    window.onscroll = function () {
        scrollFunction()
    };

    function scrollFunction() {
        if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
            mybutton.style.display = "block";
        } else {
            mybutton.style.display = "none";
        }
    }

    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>

<script src="https://code.jquery.com/jquery-3.7.0.js"
        integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src = "${pageContext.request.contextPath}/view/dist/js/validateForm.js"></script>
<script src = "${pageContext.request.contextPath}/view/dist/js/validateSignin.js"></script>
<script>
    $(document).ready(function () {
        $('.your-class').slick({
            slidesToShow: 3,
            Infinite: true,
            arrows: false,
            autoplay: true,
            autoplaySpeed: 4000,
            slidesToScroll: 2,
            dots: true,
            dotsClass: 'editdots',
        });
    });
</script>
<script src="${pageContext.request.contextPath}/view/lib/WOW-master/dist/wow.min.js"></script>
<script>
    new WOW().init();
</script>
<script>
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));


    var loginSuccessMessage = "${loginCheck}";
    if (loginSuccessMessage) {
        showMesLogin(loginSuccessMessage);
    }

    var signinSeccessMesage ="${signinThanhCong}"
    if(signinSeccessMesage){
        showMesSignin(signinSeccessMesage);
    }
</script>
</script>
</body>
</html>
