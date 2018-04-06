/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Oops
 */
public class MyDb {
    Connection con;
    String url ="jdbc:mysql://questionbank350mysqlserver.mysql.database.azure.com:3306/questionbankdb?useSSL=true&requireSSL=false"; 
    String user = "priomkhan@questionbank350mysqlserver";
    String password = "mdk705@usask.ca";
    public Connection getCon(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bldbank","root","123456");
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MyDb.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        } catch (SQLException ex) {
            Logger.getLogger(MyDb.class.getName()).log(Level.SEVERE, null, ex);
             System.out.println(ex);
        }
    return con;
    }
    
}
