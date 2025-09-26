import 'dart:io';
import 'tugas_kalkulator_2327240141.dart';

void main(){
  var kalkulator = Kalkulator();
  bool u = true;
  while (u){
    try {
      stdout.write("Silahkan masukkan bilangan ke 1: ");
      double bil1 = double.parse(stdin.readLineSync()!);

      stdout.write("Silahkan masukkan bilangan ke 2: ");
      double bil2 = double.parse(stdin.readLineSync()!);

      print("\nPilih operasi:");
      print("[1] Tambah");
      print("[2] Kurang");
      print("[3] Kali");
      print("[4] Bagi");

      stdout.write("Masukkan pilihan (1 - 4): ");
      String? pilihan = stdin.readLineSync();

      double? hasil;

      if (pilihan == '1'){
        hasil = kalkulator.tambah(bil1, bil2);
        print("Hasil tambah adalah : $hasil\n");
      }else if (pilihan == '2'){
        hasil = kalkulator.kurang(bil1, bil2);
        print("Hasil kurang adalah : $hasil\n");
      }else if (pilihan == "3"){
        hasil = kalkulator.kali(bil1, bil2);
        print("Hasil kali adalah : $hasil\n");
      }else if (pilihan == "4"){
        hasil = kalkulator.bagi(bil1, bil2);
        print("Hasil bagi adalah : $hasil\n");
      }else {
        print("Pilihan anda tidak sesuai \n");
        continue;
      }
    } catch(e){
      print("Input yang anda masukkan tidak sesuai, Silahkan masukkan angka yang benar \n");
      continue;
    }

    stdout.write("Apakah anda ingin menggunakan kalkulator lagi? (Y/T): ");
    String? jawaban = stdin.readLineSync();

    if(jawaban == null || jawaban.toUpperCase()=="T"){
      u = false;
      print("Terima kasih telah menggunakan kalkulator");
    }
  }
}