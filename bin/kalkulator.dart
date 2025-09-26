class Kalkulator {
  double tambah(double a, double b){
    return a + b;
  }

  double kurang(double a, double b){
    return a - b;
  }

  double kali(double a, double b){
    return a * b;

  }

  double bagi(double a, double b){
    if (b==0){
      throw Exception("Error: tidak bisa membagi dengan angka 0");
    }
    return a / b;
  }
}