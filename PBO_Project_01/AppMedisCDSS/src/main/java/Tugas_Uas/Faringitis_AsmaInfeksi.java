package Tugas_Uas;

public class Faringitis_AsmaInfeksi extends Penyakit {

    public Faringitis_AsmaInfeksi() {
        super(
            "Faringitis + Asma Infeksi",
            "Nyeri menelan dan sesak napas",
            38.5,
            "Riwayat asma dan radang tenggorokan",
            "Infeksi saluran pernapasan"
        );
    }

    @Override
    public String diagnosis() {
        return "Pasien terdiagnosis Faringitis dan Asma Infeksi";
    }

    @Override
    public void tampilkanInfo() {
        System.out.println("Penyakit : Faringitis + Asma Infeksi");
        System.out.println("Gejala   : Nyeri menelan, sesak napas");
    }

    @Override
    public String getDosisObat() {
        return "Salbutamol (Inhaler): 100–200 mcg\nAmoxicillin: 500 mg setiap 8 jam (3x sehari)";
    }

    @Override
    public String getInfoPeyakit() {
        return "Faringitis + Asma Infeksi";
    }

    @Override
    public String getInfoGejala() {
        return "Nyeri menelan, tenggorokan sakit, sesak napas";
    }
}
