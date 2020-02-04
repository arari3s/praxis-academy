import 'dart:io';

void main() {
  stdout.write("Masukan nomor : ");
  int numb = int.parse(stdin.readLineSync().trim());

  // mengecek nomor yang akan di input
  if (numb < 10) {
    print("nomor kurang dari 10");
  } else {
    print("nomor lebih dari 10");
  }
}
