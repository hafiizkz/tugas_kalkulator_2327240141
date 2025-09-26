import 'dart:io';
import 'kalkulator.dart';

void main() {
  var kalkulator = Kalkulator();
  bool ulang = true;

  while (ulang) {
    try {
      // Input bilangan pertama
      stdout.write("Masukkan bilangan pertama: ");
      double bil1 = double.parse(stdin.readLineSync()!);

      // Input bilangan kedua
      stdout.write("Masukkan bilangan kedua: ");
      double bil2 = double.parse(stdin.readLineSync()!);

      // Pilihan menu
      print("\nPilih operasi:");
      print("[1] Tambah");
      print("[2] Kurang");
      print("[3] Kali");
      print("[4] Bagi");

      stdout.write("Masukkan pilihan (1-4): ");
      String? pilihan = stdin.readLineSync();

      double? hasil;

      if (pilihan == '1') {
        hasil = kalkulator.tambah(bil1, bil2);
        print("Hasil: $hasil\n");
      } else if (pilihan == '2') {
        hasil = kalkulator.kurang(bil1, bil2);
        print("Hasil: $hasil\n");
      } else if (pilihan == '3') {
        hasil = kalkulator.kali(bil1, bil2);
        print("Hasil: $hasil\n");
      } else if (pilihan == '4') {
        hasil = kalkulator.bagi(bil1, bil2);
        print("Hasil: $hasil\n");
      } else {
        print("Pilihan tidak valid!\n");
        continue; // balik ke awal loop
      }

    } catch (e) {
      print("Input tidak valid. Silakan masukkan angka yang benar.\n");
      continue;
    }

    // Tanya apakah ingin mengulang
    stdout.write("Apakah ingin menghitung lagi? (Y/T): ");
    String? jawaban = stdin.readLineSync();

    if (jawaban == null || jawaban.toUpperCase() == "T") {
      ulang = false;
      print("Terima kasih telah menggunakan kalkulator.");
    }
  }
}
