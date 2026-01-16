package Tugas_Uas;

public class AsmaInfeksi extends Penyakit {

    public AsmaInfeksi() {
        super(
            "Asma Infeksi",
            "Sesak napas",
            37.5,
            "Riwayat asma",
            "Infeksi saluran pernapasan"
        );
    }

    @Override
    public String diagnosis() {
        return "Pasien terdiagnosis Asma Infeksi";
    }

    @Override
    public void tampilkanInfo() {
        System.out.println("Penyakit : Asma Infeksi");
        System.out.println("Gejala   : Sesak napas, batuk");
    }

    @Override
    public String getDosisObat() {
        return "Salbutamol (Inhaler): 100–200 mcg";
    }

    @Override
    public String getInfoPeyakit() {
        return "Asma Infeksi";
    }

    @Override
    public String getInfoGejala() {
        return "Sesak napas, batuk, napas berbunyi";
    }
}
