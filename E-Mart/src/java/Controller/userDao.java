/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

/**
 *
 * @author DELL
 */
import java.sql.Connection; //it is sql not jms
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
class userDao {

    static void saveUser(SignUpUser user) {
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
    
}
