/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Books;

import java.io.File;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import sun.jdbc.odbc.JdbcOdbcDriver;

/**
 *
 * @author syed
//    final URL location = getClass().getProtectionDomain().getCodeSource().getLocation();
//    final File file = new File(location.getPath());

 */
public class AddBooks {
    public static Connection conn;
    public static String Log="false";
    HttpSession session;
    private static PreparedStatement ps;
    public String fileP,filePath; 
    private ResultSet rs;
    static PageContext pc;
    static ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
    static URL resource = classLoader.getResource("");
//    static final File file = new File("E://JavaProjects/Library/web/library.accdb");
    static final File file = new File(resource.getPath()+ "/Books/library.accdb");
 
    
    //    static final File file = new File(resource.getPath());
    static String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ="+file.getAbsolutePath()+"";
    
    public static void setConnection()throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
//        conn = DriverManager.getConnection("jdbc:mysql://localhost/company","root","root");
//        conn = DriverManager.getConnection("jdbc:mysql://64.62.211.131/muzamil_company","company","company");
         conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/muzamil_company","muzamil_company","company");
//        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//         conn = DriverManager.getConnection(database);
//       conn = DriverManager.getConnection("jdbc:odbc:Driver={Microsoft Access Driver(*.mdb, *.accdb)}; DBQ=/library.accdb;");
//    jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=/db.accdb
    }
    
    public void setfilePath(String fileP){
        this.fileP = fileP;
    }
    
    public String getfilePath(){
        return fileP;
    }

    public static void addNewUser(String UserFullName,String UserName,String Password,String ConfirmPass)throws SQLException,ClassNotFoundException{
        String Query = "Insert Into Users Values(?,?,?,?)";

        ps = conn.prepareStatement(Query);

        ps.setString(1, UserFullName);
        ps.setString(2, UserName);
        ps.setString(3, Password);
        ps.setString(4, ConfirmPass);

        ps.executeUpdate();

        ps.close();
    }
    public static void addNewBook(String sbn,String title,String author,int pages,int price,String category, String fileName)throws SQLException,ClassNotFoundException {

        ps = conn.prepareStatement("Insert Into book_master Values(?,?,?,?,?,?,?)");

        ps.setString(1, sbn);
        ps.setString(2, title);
        ps.setString(3, author);
        ps.setInt(4, pages);
        ps.setInt(5, price);
        ps.setString(6, category);
        ps.setString(7, fileName);
        ps.executeUpdate();

        ps.close();
    }

    public void checkLogin(String UN,String PWD)throws SQLException,ClassNotFoundException{

        String Query = "Select * from Users where UserName='"+UN+"' and Password='"+PWD+"'";

        ps = conn.prepareStatement(Query);

        rs = ps.executeQuery();


    }
    public void searchBooks()throws SQLException,ClassNotFoundException {

        ps = conn.prepareStatement("Select * from book_master");

        rs = ps.executeQuery();

        while (rs.next()){

            String sbn = rs.getString("sbn");
            String title = rs.getString("title");
            String author = rs.getString("author");
            int pages = rs.getInt("pages");
            int price = rs.getInt("price");
            String cat = rs.getString("category");

        }

    }
}
