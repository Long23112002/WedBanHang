package com.main.wed_ban_hang.controler;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class EmailSend {
    public void sendEmail(String emailGui, String tenKhachHang, String pass) {
        final String emailNguoiGui = "long23112k20@gmail.com";
        final String matKhauEmail = "xlrrryilnciipxta";
        String sub = "Đăng kí thành công";
        String body = "Xin chào " + tenKhachHang +"\n" + "Mật khẩu của bạn là :" + pass;

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");


        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(emailNguoiGui, matKhauEmail);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(emailNguoiGui));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailGui));
            message.setSubject(sub);
            message.setText(body);

            Transport.send(message);

            System.out.println("Gửi email thành công");
        } catch (MessagingException e) {
            e.printStackTrace();
            System.out.println("Gửi email false");
        }
    }
}
