package com.main.wed_ban_hang.service;
import com.main.wed_ban_hang.model.Users;
import com.main.wed_ban_hang.reponsitory.SigninRepo;
import com.main.wed_ban_hang.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class SigninService {
    SigninRepo signinRepo = new SigninRepo();

    public int createAccount(Users users){
        return signinRepo.createAccount(users);
    }
}
