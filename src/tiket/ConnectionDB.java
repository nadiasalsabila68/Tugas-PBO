/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tiket;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JLabel;
import javax.swing.JSpinner;

/**
 *
 * @author mamur
 */
public class ConnectionDB {
    
    private static Connection koneksi;
    public static Connection getKoneksi(){
        if(koneksi == null){
            try{
                Driver driver = new Driver();
                DriverManager.registerDriver(driver);
                
                String url = "jdbc:mysql://localhost/tiketbus";
                String user = "root";
                String pass = "";
                
                String url2 = "jdbc:sqlite:C:\\Users\\abo zyad\\Documents\\sqliteDB\\tiketbus\\tiketbus.sqlite";
                String user2 = "root";
                String pass2 = "";
               
                koneksi = (Connection) DriverManager.getConnection(url,user,pass);
                //JOptionPane.showMessageDialog(null,"Koneksi Berhasil");
                System.out.println("Koneksi Berhasil");
            }catch(SQLException ex){
                JOptionPane.showMessageDialog(null,"Koneksi Gagal");
                System.out.println("Koneksi Gagal");
            }
        }
        return koneksi;
    }
    JLabel hanak;
    JSpinner sanak;
    
}               