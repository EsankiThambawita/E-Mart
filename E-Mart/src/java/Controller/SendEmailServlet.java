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
import Model.SendEmail;
import jakarta.mail.MessagingException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(name = "SendEmailServlet", urlPatterns = {"/SendEmailServlet"})
public class SendEmailServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String toEmail = "esankilakvindee2000@gmail.com"; // You can replace this with the recipient's email
        String subject = "Thank you for your order!";
        String body = "Dear Customer,\n\nThank you for placing your order. We appreciate your business.\n\nSincerely,\nThe eMart Team";
        
        try {
            SendEmail.sendEmail(toEmail, subject, body); // Call the sendEmail method
        }catch (MessagingException ex) {
            Logger.getLogger(SendEmailServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        // Handle exception
        response.sendRedirect("OrderConfirmation.jsp");
    }
    }

   

