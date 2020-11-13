/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.JDBCType;
import java.sql.SQLDataException;

/**
 *
 * @author iikhi
 */
public class konek {
    private static Connection koneksi;
    public  static Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Koneksi Berhasil");
        }
        catch (ClassNotFoundException ex){
            System.out.println("Koneksi Gagal"+ex);
        }
        String url= "jdbc:mysql://localhost/cibodas";
        try{
            koneksi = DriverManager.getConnection(url,"root","");
            System.out.println("Berhasil Koneksi Database");
        }
        catch(SQLException ex){
            System.out.println("Gagal Koneksi Database");
        }
        return koneksi;
    }
    private Connection kon;
    public  Connection conne(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Koneksi Berhasil");
        }
        catch (ClassNotFoundException ex){
            System.out.println("Koneksi Gagal"+ex);
        }
        String url= "jdbc:mysql://localhost/cibodas";
        try{
            koneksi = DriverManager.getConnection(url,"root","");
            System.out.println("Berhasil Koneksi Database");
        }
        catch(SQLException ex){
            System.out.println("Gagal Koneksi Database");
        }
        return koneksi;
    }
    public static Connection getConnection() {
        Connection connection = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/cibodas"; 
        String user = "root";
        String password = "";
        if (connection == null) {
            try {
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException | SQLException error) {
               System.exit(0);
            }

        }
        return connection;
    }

    public PreparedStatement connect(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}    
   
