package Tugas_Uas;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DiagnosisDAO {

    public static void simpanDiagnosis(int idPasien, int idPenyakit) {

        String sql = "INSERT INTO diagnosis (id_pasien, id_penyakit) VALUES (?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, idPasien);
            ps.setInt(2, idPenyakit);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
