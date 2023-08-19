package com.main.wed_ban_hang.controler;

import com.main.wed_ban_hang.model.Users;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.main.wed_ban_hang.service.SigninService;
import java.io.IOException;

@WebServlet(name = "signin", value = "/signin")
public class SigninControler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SigninService signinService = new SigninService();
        Users users = new Users();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String passConfim = request.getParameter("passConfim");
        String phone = request.getParameter("phone");
        String diaChi = request.getParameter("diaChi");

        if(name != null && email != null && pass != null && phone != null && diaChi != null){
            users.setTen(name);
            users.setDiaChi(diaChi);
            users.setSoDienThoai(phone);
            users.setMatKhau(pass);
            users.setEmail(email);
        }else{
            request.getRequestDispatcher("view/index.jsp").forward(request,response);
        }



        int checkLogin = signinService.createAccount(users);
        if(checkLogin !=  0){
            request.setAttribute("signinThanhCong","Đăng kí thành công");
            EmailSend emailSend = new EmailSend();
            emailSend.sendEmail(email,name,pass);
            request.getRequestDispatcher("view/index.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
    }
}
