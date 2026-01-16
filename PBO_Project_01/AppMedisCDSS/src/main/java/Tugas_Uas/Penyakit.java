package Tugas_Uas;

public abstract class Penyakit {
    private String nama;
    private String gejalaUtama;
    private double suhuTubuh;
    private String riwayat;
    private String pemicu;

    public Penyakit(String nama, String gejalaUtama, double suhuTubuh,
                    String riwayat, String pemicu) {
        this.nama = nama;
        this.gejalaUtama = gejalaUtama;
        this.suhuTubuh = suhuTubuh;
        this.riwayat = riwayat;
        this.pemicu = pemicu;
    }

    public String getNama() {
        return nama;
    }

    // ===== METHOD ABSTRAK =====
    public abstract String diagnosis();
    public abstract void tampilkanInfo();
    public abstract String getDosisObat();
    public abstract String getInfoPeyakit();
    public abstract String getInfoGejala();
}


