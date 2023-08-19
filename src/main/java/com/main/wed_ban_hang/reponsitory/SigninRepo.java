package com.main.wed_ban_hang.reponsitory;

import com.main.wed_ban_hang.model.Users;
import com.main.wed_ban_hang.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class SigninRepo {

    public int createAccount(Users users){
        Transaction transaction = null;
        try(Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.persist(users);
            transaction.commit();
            return 1;
        }catch (Exception e){
            transaction.rollback();
            e.printStackTrace();
            return 0;
        }
    }
}
