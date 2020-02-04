import 'dart:io';

void main() {
  stdout.write("Masukan jumlah perulangan: ");
  int i = int.parse(stdin.readLineSync());

  for (int n = 1; n <= i; n++) {
    print("diulang sebanyak ke-$n");
  }
}
