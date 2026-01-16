package Tugas_Uas;

import java.util.Scanner;

public class MainCDSS {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Masukkan nama pasien: ");
        String nama = sc.nextLine();

        System.out.print("Masukkan suhu tubuh: ");
        double suhu = sc.nextDouble();
        sc.nextLine();

        System.out.print("Ada bintik merah? (y/n): ");
        boolean bintik = sc.nextLine().equalsIgnoreCase("y");

        System.out.print("Nyeri menelan? (y/n): ");
        boolean nyeri = sc.nextLine().equalsIgnoreCase("y");

        System.out.print("Sesak napas? (y/n): ");
        boolean sesak = sc.nextLine().equalsIgnoreCase("y");

        System.out.print("Riwayat alergi/asma? (y/n): ");
        boolean alergi = sc.nextLine().equalsIgnoreCase("y");

        CDSS pasien = new CDSS(nama, suhu, bintik, nyeri, sesak, alergi);
        Penyakit hasil = pasien.diagnosa(); // POLYMORPHISM

        System.out.println("\n================================");
        System.out.println("        HASIL DIAGNOSIS CDSS     ");
        System.out.println("================================");
        System.out.println("Nama Pasien   : " + pasien.namaPasien);
        System.out.println("Suhu Tubuh    : " + pasien.suhu + " °C");
        System.out.println("Diagnosis     : " + hasil.diagnosis());
        hasil.tampilkanInfo();
        System.out.println("Dosis Obat    : " + hasil.getDosisObat());
        System.out.println("================================");

        sc.close();
    }
}


