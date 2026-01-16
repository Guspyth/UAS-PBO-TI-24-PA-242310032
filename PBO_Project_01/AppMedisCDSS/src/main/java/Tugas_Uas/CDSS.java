package Tugas_Uas;


public class CDSS extends Pasien {

    public CDSS(String namaPasien, double suhu, boolean bintikMerah,
                boolean nyeriMenelan, boolean sesakNapas, boolean alergi) {
        super(namaPasien, suhu, bintikMerah, nyeriMenelan, sesakNapas, alergi);
    }

    public Penyakit diagnosa() {

       
        if (suhu >= 39 && bintikMerah && sesakNapas && alergi) {
            return new DHF_AsmaInfeksi();
        }

      
        else if (nyeriMenelan && suhu >= 38 && sesakNapas && alergi) {
            return new Faringitis_AsmaInfeksi();
        }

        
        else if (suhu >= 39 && bintikMerah) {
            return new DemamBerdarah();
        }

        else if (nyeriMenelan && suhu >= 38) {
            return new Faringitis();
        }

        else if (sesakNapas && alergi) {
            return new AsmaInfeksi();
        }

        else if (suhu < 37 && !bintikMerah && !nyeriMenelan && !sesakNapas) {
            return new CommonCold();
        }
        return new CommonCold();
    }
}
 




