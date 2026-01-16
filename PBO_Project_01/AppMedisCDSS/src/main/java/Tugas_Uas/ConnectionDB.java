package Tugas_Uas;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB {

    public static Connection getConnection() {
        Connection con = null;

        try {
            String url = "jdbc:mysql://localhost:3306/cdss_database?useSSL=false&serverTimezone=UTC";
            String user = "242310032";
            String pass = ""; // isi kalau ada password

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(url, user, pass);
            System.out.println("KONEKSI DATABASE BERHASIL");

        } catch (Exception e) {
            System.out.println("KONEKSI DATABASE GAGAL");
            e.printStackTrace();
        }

        return con;
    }
}
