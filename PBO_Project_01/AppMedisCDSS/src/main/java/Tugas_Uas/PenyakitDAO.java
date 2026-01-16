package Tugas_Uas;

import java.sql.*;

public class PenyakitDAO {

    public static int simpanPenyakit(Penyakit p) {
        int id = -1;

        String sql = "INSERT INTO penyakit (jenis_penyakit) VALUES (?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            ps.setString(1, p.getInfoPeyakit());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getInt(1);
            }

            simpanGejala(p.getInfoGejala(), id);
            simpanObat(p.getDosisObat(), id);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }

    private static void simpanGejala(String gejala, int idPenyakit) {
        String sql = "INSERT INTO gejala (jenis_gejala, id_penyakit) VALUES (?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, gejala);
            ps.setInt(2, idPenyakit);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void simpanObat(String obat, int idPenyakit) {
        String sql = "INSERT INTO obat (jenis_obat, id_penyakit) VALUES (?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, obat);
            ps.setInt(2, idPenyakit);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
