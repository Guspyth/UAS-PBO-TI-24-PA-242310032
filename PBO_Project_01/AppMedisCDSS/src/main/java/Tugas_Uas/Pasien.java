package Tugas_Uas;

public class Pasien {
    protected String namaPasien;
    protected double suhu;
    protected boolean bintikMerah;
    protected boolean nyeriMenelan;
    protected boolean sesakNapas;
    protected boolean alergi;

    public Pasien(String namaPasien, double suhu, boolean bintikMerah,
                  boolean nyeriMenelan, boolean sesakNapas, boolean alergi) {
        this.namaPasien = namaPasien;
        this.suhu = suhu;
        this.bintikMerah = bintikMerah;
        this.nyeriMenelan = nyeriMenelan;
        this.sesakNapas = sesakNapas;
        this.alergi = alergi;
    }
}

