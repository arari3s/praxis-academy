import 'dart:io';

void main() {
  Atm akunatm1 = Atm();
  Atm akunatm2 = Atm();
  List<Atm> atm = List<Atm>();
  atm.add(akunatm1);
  atm[0].setPinAkun(123);
  atm[0].setNamaAkun("Samsul");
  atm[0].setSaldo(1000000);
  atm.add(akunatm2);
  atm[1].setPinAkun(456);
  atm[1].setNamaAkun("Udin");
  atm[1].setSaldo(2000000);
  masukAkun(atm);
}

void masukAkun(List<Atm> akun) {
  bool ulang = true;
  do {
    stdout.write("Masukan Pin :");
    int pin = int.parse(stdin.readLineSync());
    for (var item in akun) {
      if (item.getPinAkun() == pin) {
        atmKu(item, akun);
        ulang = false;
      }
    }
  } while (ulang);
}

void atmKu(Atm atm, List<Atm> akun) {
  bool ulang = false;
  do {
    stdout.writeln();
    stdout.writeln(" --= Selamat Datang " + atm.getNamaAkun() + " =--");
    stdout.writeln("1 = Tarik Tunai ");
    stdout.writeln("2 = Setor Tunai ");
    stdout.writeln("3 = Cek Saldo ");
    stdout.writeln("4 = Ganti Akun ");
    stdout.writeln("5 = Keluar Aplikasi ");
    stdout.write("Pilih Menu : ");
    int menu = int.parse(stdin.readLineSync());
    switch (menu) {
      case 1:
        stdout.writeln("-- Tarik Tunai --");
        stdout.write("Nominal :");
        int tarikTunai = int.parse(stdin.readLineSync());
        atm.tarikTunai(tarikTunai);
        stdout.writeln();
        break;
      case 2:
        stdout.writeln("-- Setor Tunai ---");
        stdout.write("Nominal :");
        int setorTunai = int.parse(stdin.readLineSync());
        atm.setorTunai(setorTunai);
        stdout.writeln();
        break;
      case 3:
        stdout.writeln("-- Cek Saldo ---");
        stdout.writeln("Saldo Anda :" + atm.cekSaldoAkun().toString());
        stdout.writeln();
        break;
      case 4:
        stdout.writeln("-- Ganti Akun ---");
        masukAkun(akun);
        ulang = true;
        break;
      case 5:
        stdout.writeln("-- Terima Kasih ---");
        ulang = true;
        break;
      default:
        stdout.writeln("Maaf Masukan Anda Salah,Coba Lagi");
        stdout.writeln();
    }
  } while (!ulang);
}

class Atm {
  String namaAkun;
  int pinAkun;
  int saldoAkun = 0;

  void setNamaAkun(String namaAkun) {
    this.namaAkun = namaAkun;
  }

  String getNamaAkun() {
    return namaAkun;
  }

  int getPinAkun() {
    return this.pinAkun;
  }

  void setPinAkun(int pinAkun) {
    this.pinAkun = pinAkun;
  }

  int cekSaldoAkun() {
    return saldoAkun;
  }

  void setSaldo(int saldoAkun) {
    this.saldoAkun = saldoAkun;
  }

  int tarikTunai(int tarikTunai) {
    return this.saldoAkun = this.saldoAkun - tarikTunai;
  }

  int setorTunai(int setorTunai) {
    return this.saldoAkun = this.saldoAkun + setorTunai;
  }
}
