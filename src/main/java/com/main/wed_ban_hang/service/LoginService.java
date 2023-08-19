package com.main.wed_ban_hang.service;

import com.main.wed_ban_hang.reponsitory.LoginRepo;

public class LoginService {

    LoginRepo loginRepo = new LoginRepo();

    public boolean checkLogin(String email, String matKhau) {
        return loginRepo.checkLogin(email, matKhau);
    }

    public String getNameKhachHang(String email) {
        return loginRepo.getNameKhachHang(email);
    }

}
