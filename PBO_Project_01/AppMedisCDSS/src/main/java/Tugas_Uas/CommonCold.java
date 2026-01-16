package Tugas_Uas;

public class CommonCold extends Penyakit {

    public CommonCold() {
        super(
            "Common Cold",
            "Pilek ringan",
            36.5,
            "Tidak ada",
            "Cuaca dingin"
        );
    }

    @Override
    public String diagnosis() {
        return "Pasien mengalami Common Cold (flu ringan)";
    }

    @Override
    public void tampilkanInfo() {
        System.out.println("Penyakit : Common Cold");
        System.out.println("Gejala   : Pilek, bersin");
    }

    @Override
    public String getDosisObat() {
        return "Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).";
    }

    @Override
    public String getInfoPeyakit() {
        return "Common Cold";
    }

    @Override
    public String getInfoGejala() {
        return "Pilek ringan, bersin, hidung tersumbat";
    }
}
