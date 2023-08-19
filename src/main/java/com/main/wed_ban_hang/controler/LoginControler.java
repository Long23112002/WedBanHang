package com.main.wed_ban_hang.controler;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.main.wed_ban_hang.service.LoginService;

import java.io.IOException;

@WebServlet({"/login", "/logout"})
public class LoginControler extends HttpServlet {

    private final LoginService loginService = new LoginService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String url = request.getRequestURI();

        if(url.contains("/login")){
            String email = request.getParameter("email");
            String matKhau = request.getParameter("matKhau");

            boolean checkLogin = loginService.checkLogin(email, matKhau);

            if (checkLogin) {
                String tenKhachHang = loginService.getNameKhachHang(email);
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                session.setAttribute("tenKhachHang", "Xin Chào" + " " + tenKhachHang);
                session.setAttribute("loggedIn", true);
                request.setAttribute("loginCheck", "Đăng nhập thành công");
                request.getRequestDispatcher("view/index.jsp").forward(request, response);
            } else {
                request.setAttribute("loginCheck", "Tài Khoản Mật Khẩu không đúng vui lòng nhập lại");
                request.getRequestDispatcher("view/LoginForm.jsp").forward(request, response);
            }
        }else if(url.contains("/logout")){
            HttpSession session = request.getSession();
            session.removeAttribute("email");
            session.removeAttribute("tenKhachHang");
            session.removeAttribute("loggedIn");
            session.invalidate();
            request.getRequestDispatcher("view/index.jsp").forward(request, response);
        }



    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
