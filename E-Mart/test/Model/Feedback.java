/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Properties;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

/**
 *
 * @author Esanki Lakvindee
 */
public class Feedback {
    // Method to send order confirmation email
    public static void sendOrderConfirmationEmail(String recipientEmail) {
        // Sender's email ID needs to be mentioned
        String from = "your_email@example.com"; // Update with your email
        
        // Assuming you are sending email from localhost
        String host = "localhost";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server
        properties.setProperty("mail.smtp.host", host);

        // Get the default Session object.
        Session session = Session.getDefaultInstance(properties);

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));

            // Set Subject: header field
            message.setSubject("Order Confirmation");

            // Now set the actual message
            message.setText("Thank you for your order!");

            // Send message
            Transport.send(message);
            System.out.println("Sent order confirmation email successfully to " + recipientEmail);
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }
}
