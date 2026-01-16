package Tugas_Uas;

import javax.swing.*;
import java.awt.*;
import java.util.Vector;

public class FormRiwayat extends JFrame {

    public FormRiwayat() {
        setTitle("Riwayat Diagnosis Pasien");
        setSize(800, 400);
        setLocationRelativeTo(null);

        Vector<String> kolom = new Vector<String>();
        kolom.add("Nama Pasien");
        kolom.add("Penyakit");
        kolom.add("Gejala");
        kolom.add("Dosis Obat");

        Vector<Vector<Object>> data = RiwayatDAO.getRiwayat();

        JTable table = new JTable(data, kolom);
        JScrollPane scrollPane = new JScrollPane(table);

        add(scrollPane, BorderLayout.CENTER);
    }
}
