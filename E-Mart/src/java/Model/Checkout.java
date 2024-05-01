/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hp
 */
public class Checkout {
      Statement st;
    public void addCheckout(String name, String mail, String add, String citys, String states, int zips) {
       connectToDB();
        String query = "INSERT INTO orders(name,email,address,city,state,zip) VALUES('"+name+"','"+mail+"','"+add+"','"+citys+"','"+states+"','"+zips+"')";
        try {
            st.executeUpdate(query);           
        } catch (SQLException ex) {
           Logger.getLogger(Checkout.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void connectToDB() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/emart";
        
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Checkout.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
}
