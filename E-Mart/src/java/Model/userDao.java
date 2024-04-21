/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author DELL
 */
import Model.SignUpUser;
import java.sql.Connection; //it is sql not jms
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class userDao {

    public static void saveUser(SignUpUser user) {
            String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/userdetails";//databasename
        String sql = "INSERT INTO usersignup (username, email, password, contact_number) VALUES (?, ?, ?, ?)";//table name
         try {
            Class.forName(driver);
            Connection connection = (Connection) DriverManager.getConnection(url, "root", "");

            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, user.getUsername());
                statement.setString(2, user.getEmail());
                statement.setString(3, user.getPassword());
                statement.setString(4, user.getContactNumber());

                statement.executeUpdate();
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }

    public SignUpUser getUserByEmail(String email) {
      String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/userdetails";
    String sql = "SELECT * FROM usersignup WHERE email = ?";
    SignUpUser user = null;
    
    try {
        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, "root", "");
        
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, email);
            
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    String username = resultSet.getString("username");
                    String password = resultSet.getString("password");
                    String contactNumber = resultSet.getString("contact_number");
                    
                    // Create a new User object with fetched data
                    user = new SignUpUser(username, email, password, contactNumber);
                }
            }
        }
    } catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
    }
    
    return user;
    }

   
}
