
package forgotPassword;

import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class sendEmail {
    
    public String getRandom()
    {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        
        return String.format("%06d", number);
    }
    
    public boolean sendemail(userEmail user)
    {
        boolean test = false;
        String toEmail = user.getEmail();
        String fromEmail = "systemsoftware170@gmail.com";
        String password = "sparsh@123";
        try {
            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.gmail.com");
            pr.setProperty("mail.smtp.port", "587");
            pr.setProperty("mail.smtp.auth", "true");
            pr.setProperty("mail.smtp.starttls.enable", "true");
            pr.put("mail.smtp.socketFactory.port","587");
            pr.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
            
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication()
                {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            
            Message mess = new MimeMessage(session);
            
            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            
            mess.setSubject("User Email verification");
            mess.setText("You've reached the next step for changing your password! Please verify your account using this OTP: "+user.getCode());
            
            Transport.send(mess);
            test = true;
            
            
        } catch (Exception e) {
            e.printStackTrace();;
        }
        
        
        return test;
    }
    
}
