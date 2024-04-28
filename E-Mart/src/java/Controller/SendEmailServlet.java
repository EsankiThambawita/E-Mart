/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.util.Properties;






/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(name = "SendEmailServlet", urlPatterns = {"/SendEmailServlet"})
public class SendEmailServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            // Set up mail server
            String host = "smtp.gmail.com";
            String from = "emart9005@gmail.com";
            String to = "esankilakvindee2000@gmail.com";
            String subject = "Order Confirmation";
            String messageText = "Thank you for your order!";

            Properties properties = new Properties();
            properties.setProperty("mail.smtp.host", host);
            properties.setProperty("mail.smtp.auth", "true");
            properties.setProperty("mail.smtp.starttls.enable", "true");
            properties.setProperty("mail.smtp.port", "587"); 

            // Create Authenticator object to authenticate the sender's email and password
            Authenticator authenticator = new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, "emart2024");
                }
            };

            // Get session
            Session session = Session.getInstance(properties, authenticator);

            // Create message
            MimeMessage message = new MimeMessage(session);

            try {
                // Set the from, to, subject, and message text
                message.setFrom(new InternetAddress(from));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject(subject);
                message.setText(messageText);

                // Send message
                Transport.send(message);
                System.out.println("Email sent successfully");
                
                request.setAttribute("emailSent", true);
                
            } catch (MessagingException mex) {
                mex.printStackTrace();
            }
        }
    
    }

   

