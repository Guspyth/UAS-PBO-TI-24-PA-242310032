package Tugas_Uas;

import java.sql.Connection;

public class TestKoneksiDB {

    public static void main(String[] args) {

        Connection conn = ConnectionDB.getConnection();

        if (conn != null) {
            System.out.println("✅ Koneksi ke database BERHASIL");
        } else {
            System.out.println("❌ Koneksi ke database GAGAL");
        }
    }
}
