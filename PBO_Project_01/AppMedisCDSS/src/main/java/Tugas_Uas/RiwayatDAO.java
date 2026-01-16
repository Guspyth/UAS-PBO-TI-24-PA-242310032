package Tugas_Uas;

import java.sql.*;
import java.util.Vector;

public class RiwayatDAO {

    public static Vector<Vector<Object>> getRiwayat() {
        Vector<Vector<Object>> data = new Vector<Vector<Object>>();

        String sql =
            "SELECT p.nama, py.jenis_penyakit, g.jenis_gejala, o.jenis_obat " +
            "FROM diagnosis d " +
            "JOIN pasien p ON d.id_pasien = p.id " +
            "JOIN penyakit py ON d.id_penyakit = py.id " +
            "JOIN gejala g ON py.id = g.id_penyakit " +
            "JOIN obat o ON py.id = o.id_penyakit";

        try {
            Connection conn = DBConnection.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                Vector<Object> row = new Vector<Object>();
                row.add(rs.getString("nama"));
                row.add(rs.getString("jenis_penyakit"));
                row.add(rs.getString("jenis_gejala"));
                row.add(rs.getString("jenis_obat"));
                data.add(row);
            }

            rs.close();
            st.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }
}
