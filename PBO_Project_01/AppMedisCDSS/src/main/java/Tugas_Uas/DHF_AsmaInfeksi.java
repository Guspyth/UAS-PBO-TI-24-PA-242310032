package Tugas_Uas;

public class DHF_AsmaInfeksi extends Penyakit {

    public DHF_AsmaInfeksi() {
        super(
            "Demam Berdarah + Asma Infeksi",
            "Demam tinggi dan sesak napas",
            39.5,
            "Riwayat asma",
            "Nyamuk dan infeksi pernapasan"
        );
    }

    @Override
    public String diagnosis() {
        return "Pasien terdiagnosis Demam Berdarah dan Asma Infeksi";
    }

    @Override
    public void tampilkanInfo() {
        System.out.println("Penyakit : Demam Berdarah + Asma Infeksi");
        System.out.println("Gejala   : Demam tinggi, bintik merah, sesak napas");
    }

    @Override
    public String getDosisObat() {
        return "Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.";
    }

    @Override
    public String getInfoPeyakit() {
        return "Demam Berdarah + Asma Infeksi";
    }

    @Override
    public String getInfoGejala() {
        return "Demam tinggi, bintik merah, sesak napas";
    }
}
