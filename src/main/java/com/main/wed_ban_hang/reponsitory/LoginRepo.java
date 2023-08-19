package com.main.wed_ban_hang.reponsitory;

import com.main.wed_ban_hang.model.Users;
import com.main.wed_ban_hang.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class LoginRepo {

    public boolean checkLogin(String email, String matKhau) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            String hql = "Select u from Users u where u.email =: email AND u.matKhau =: matKhau";
            Query<Users> query = session.createQuery(hql, Users.class);
            query.setParameter("email", email);
            query.setParameter("matKhau", matKhau);
            Users users = query.uniqueResult();
            transaction.commit();
            if (users != null) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    public String getNameKhachHang(String email) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            String hql = "Select u.ten from Users u where u.email = :email";
            Query<String> query = session.createQuery(hql, String.class);
            query.setParameter("email", email);
            String ten = query.uniqueResult();
            transaction.commit();
            return ten;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
            return null;
        }
    }

}
