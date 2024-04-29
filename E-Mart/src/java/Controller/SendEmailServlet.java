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
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(name = "SendEmailServlet", urlPatterns = {"/SendEmailServlet"})
public class SendEmailServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out= response.getWriter();   
        String apiKey = "mlsn.1e09da5329b79f474aff9bc3ccb8ddc06df779561f248f8fc202c9764dea4a33";
        String senderEmail = "MS_1iz77E@trial-k68zxl2enw9lj905.mlsender.net";
        String recipientEmail = "esankilakvindee2000@gmail.com";

        String url = "https://api.mailersend.com/v1/email";
        String payload = "{\n" +
                "    \"from\": {\n" +
                "        \"email\": \"" + senderEmail + "\"\n" +
                "    },\n" +
                "    \"to\": [\n" +
                "        {\n" +
                "            \"email\": \"" + recipientEmail + "\"\n" +
                "        }\n" +
                "    ],\n" +
                "    \"subject\": \"Hello from MailerSend!\",\n" +
                "    \"text\": \"Greetings from the team, you got this message through MailerSend.\",\n" +
                "    \"html\": \"Greetings from the team, you got this message through MailerSend.\"\n" +
                "}";

        try {
            URL obj = new URL(url);
            HttpURLConnection con = (HttpURLConnection) obj.openConnection();

            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type", "application/json");
            con.setRequestProperty("X-Requested-With", "XMLHttpRequest");
            con.setRequestProperty("Authorization", "Bearer " + apiKey);

            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(payload);
            wr.flush();
            wr.close();

            int responseCode = con.getResponseCode();
            System.out.println("Response Code : " + responseCode);

            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            StringBuilder MailResponse = new StringBuilder();

            while ((inputLine = in.readLine()) != null) {
                MailResponse.append(inputLine);
            }
            in.close();

            out.println("Response : " + MailResponse.toString());
        } catch (IOException e) {
            out.println(e.toString());
        }
    
    }

    }

   

