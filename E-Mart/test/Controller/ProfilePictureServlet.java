package Controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/ProfilePictureServlet")
@MultipartConfig
public class ProfilePictureServlet extends HttpServlet {

    // Database connection parameters
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASSWORD = "your_password";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get user ID from session or wherever you store user information
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");

        // Get the uploaded file
        Part filePart = request.getPart("profile-picture");
        InputStream inputStream = filePart.getInputStream();

        // Save the uploaded file to the database
        saveProfilePicture(userId, inputStream);

        // Redirect back to the profile page or any other desired page
        response.sendRedirect("Profile.jsp");
    }

    private void saveProfilePicture(int userId, InputStream inputStream) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement("INSERT INTO profile_pictures (user_id, image) VALUES (?, ?)")) {
            pstmt.setInt(1, userId);
            pstmt.setBlob(2, inputStream);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database error
        }
    }

    public InputStream getProfilePicture(int userId) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement("SELECT image FROM profile_pictures WHERE user_id = ?")) {
            pstmt.setInt(1, userId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getBinaryStream("image");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database error
        }
        return null;
    }
}
