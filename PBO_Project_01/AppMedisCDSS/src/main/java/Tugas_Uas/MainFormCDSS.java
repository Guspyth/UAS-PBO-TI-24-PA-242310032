package Tugas_Uas;

import javax.swing.*;
import java.awt.*;

public class MainFormCDSS extends JFrame {

    private JTextField txtNama, txtSuhu;
    private JCheckBox cbBintik, cbNyeri, cbSesak, cbAlergi;
    private JTextArea txtHasil;

    public MainFormCDSS() {
        setTitle("Clinical Decision Support System (CDSS)");
        setSize(750, 650);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLayout(new BorderLayout(10, 10));

        // ================= PANEL INPUT =================
        JPanel panelInput = new JPanel(new GridBagLayout());
        panelInput.setBorder(BorderFactory.createTitledBorder("Data Pasien"));

        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(6, 6, 6, 6);
        gbc.anchor = GridBagConstraints.WEST;

        // Nama Pasien
        gbc.gridx = 0; gbc.gridy = 0;
        panelInput.add(new JLabel("Nama Pasien"), gbc);

        gbc.gridx = 1;
        txtNama = new JTextField(22);
        panelInput.add(txtNama, gbc);

        // Suhu Tubuh
        gbc.gridx = 0; gbc.gridy = 1;
        panelInput.add(new JLabel("Suhu Tubuh (°C)"), gbc);

        gbc.gridx = 1;
        txtSuhu = new JTextField(10);
        panelInput.add(txtSuhu, gbc);

        // Gejala
        gbc.gridx = 0; gbc.gridy = 2;
        panelInput.add(new JLabel("Gejala"), gbc);

        gbc.gridx = 1;
        JPanel panelGejala = new JPanel(new GridLayout(2, 2));
        cbBintik = new JCheckBox("Bintik Merah");
        cbNyeri = new JCheckBox("Nyeri Menelan");
        cbSesak = new JCheckBox("Sesak Napas");
        cbAlergi = new JCheckBox("Riwayat Alergi / Asma");

        panelGejala.add(cbBintik);
        panelGejala.add(cbNyeri);
        panelGejala.add(cbSesak);
        panelGejala.add(cbAlergi);

        panelInput.add(panelGejala, gbc);

        add(panelInput, BorderLayout.NORTH);

        // ================= PANEL OUTPUT =================
        txtHasil = new JTextArea();
        txtHasil.setEditable(false);
        txtHasil.setFont(new Font("Monospaced", Font.PLAIN, 13));
        txtHasil.setMargin(new Insets(10, 10, 10, 10));

        JScrollPane scroll = new JScrollPane(txtHasil);
        scroll.setBorder(BorderFactory.createTitledBorder("Hasil Diagnosis"));

        add(scroll, BorderLayout.CENTER);

        // ================= PANEL BUTTON =================
        JButton btnDiagnosa = new JButton("DIAGNOSA");
        JButton btnRiwayat = new JButton("LIHAT DATA");

        btnDiagnosa.addActionListener(e -> prosesDiagnosa());
        btnRiwayat.addActionListener(e -> new FormRiwayat().setVisible(true));

        JPanel panelButton = new JPanel();
        panelButton.add(btnDiagnosa);
        panelButton.add(btnRiwayat);

        add(panelButton, BorderLayout.SOUTH);
    }

    // ================= LOGIC DIAGNOSA =================
    private void prosesDiagnosa() {
        try {
            String nama = txtNama.getText().trim();
            double suhu = Double.parseDouble(txtSuhu.getText().trim());

            boolean bintik = cbBintik.isSelected();
            boolean nyeri = cbNyeri.isSelected();
            boolean sesak = cbSesak.isSelected();
            boolean alergi = cbAlergi.isSelected();

            CDSS pasien = new CDSS(nama, suhu, bintik, nyeri, sesak, alergi);
            Penyakit hasil = pasien.diagnosa(); // POLYMORPHISM

            // ===== TAMPILKAN HASIL =====
            txtHasil.setText(
                "Nama Pasien : " + nama + "\n" +
                "Suhu Tubuh  : " + suhu + " °C\n\n" +
                "Diagnosis  : " + hasil.diagnosis() + "\n\n" +
                "Penyakit   : " + hasil.getInfoPeyakit() + "\n" +
                "Gejala     : " + hasil.getInfoGejala() + "\n\n" +
                "Dosis Obat :\n" + hasil.getDosisObat()
            );

            // ===== SIMPAN KE DATABASE =====
            int idPasien = PasienDAO.simpanPasien(nama);
            int idPenyakit = PenyakitDAO.simpanPenyakit(hasil);
            DiagnosisDAO.simpanDiagnosis(idPasien, idPenyakit);

        } catch (Exception e) {
            JOptionPane.showMessageDialog(this,
                    "Input tidak valid!\nPastikan nama dan suhu diisi dengan benar.",
                    "Error",
                    JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new MainFormCDSS().setVisible(true));
    }
}
