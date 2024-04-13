/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 *
 * @author User
 */
public class ProfilePictureServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the uploaded file from the request
        Part filePart = request.getPart("profile-picture");
        String fileName = filePart.getSubmittedFileName();

        // Define the directory to save the uploaded file
        String uploadDir = "/path/to/upload/directory";
        String filePath = uploadDir + File.separator + fileName;

        // Save the uploaded file to the server
        try (InputStream input = filePart.getInputStream();
             OutputStream output = new FileOutputStream(filePath)) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = input.read(buffer)) != -1) {
                output.write(buffer, 0, bytesRead);
            }
        } catch (IOException e) {
            // Handle file upload error
            e.printStackTrace();
        }

        // Store the file name in the user's session or associated data structure
        HttpSession session = request.getSession();
        session.setAttribute("profilePicture", fileName);

        // Redirect back to the profile page or any other desired page
        response.sendRedirect("Profile.jsp");
    }
}





