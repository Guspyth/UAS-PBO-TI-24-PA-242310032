package Tugas_Uas;

import java.sql.*;

public class PasienDAO {

    public static int simpanPasien(String nama) {
        int id = -1;

        String sql = "INSERT INTO pasien (nama) VALUES (?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            ps.setString(1, nama);
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }
}
