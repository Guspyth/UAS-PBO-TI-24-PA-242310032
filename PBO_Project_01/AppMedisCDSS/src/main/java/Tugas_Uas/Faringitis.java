package Tugas_Uas;

public class Faringitis extends Penyakit {

    public Faringitis() {
        super(
            "Faringitis",
            "Nyeri menelan",
            38.0,
            "Sering radang tenggorokan",
            "Infeksi virus atau bakteri"
        );
    }

    @Override
    public String diagnosis() {
        return "Pasien terdiagnosis Faringitis";
    }

    @Override
    public void tampilkanInfo() {
        System.out.println("Penyakit : Faringitis");
        System.out.println("Gejala   : Nyeri menelan, sakit tenggorokan");
    }

    @Override
    public String getDosisObat() {
        return "Amoxicillin: 500 mg setiap 8 jam (3x sehari)";
    }

    @Override
    public String getInfoPeyakit() {
        return "Faringitis";
    }

    @Override
    public String getInfoGejala() {
        return "Nyeri menelan, tenggorokan sakit";
    }
}
