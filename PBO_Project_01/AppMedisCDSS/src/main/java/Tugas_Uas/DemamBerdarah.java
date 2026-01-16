package Tugas_Uas;

public class DemamBerdarah extends Penyakit {

    public DemamBerdarah() {
        super(
            "Demam Berdarah",
            "Demam tinggi dan bintik merah",
            39.0,
            "Pernah terkena DBD",
            "Gigitan nyamuk"
        );
    }

    @Override
    public String diagnosis() {
        return "Pasien terdiagnosis Demam Berdarah";
    }

    @Override
    public void tampilkanInfo() {
        System.out.println("Penyakit : Demam Berdarah");
        System.out.println("Gejala   : Demam tinggi, bintik merah");
    }

    @Override
    public String getDosisObat() {
        return "Oralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.";
    }

    @Override
    public String getInfoPeyakit() {
        return "Demam Berdarah (DBD)";
    }

    @Override
    public String getInfoGejala() {
        return "Demam tinggi, nyeri otot, bintik merah";
    }
}
