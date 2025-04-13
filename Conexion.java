/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pkg2025_4_actividad2;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author HP
 */
public class Conexion {
    
    public Connection getConnection(){
        
        Connection con = null;
        String base = "bancobd2";
        String url = "jdbc:mysql://localhost:3306/"+ base;
        String user = "rcot";
        String password = "";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url,user,password);
        
        }catch(Exception e){
            System.err.print(e);
        }
        
        return con;
    }
}
