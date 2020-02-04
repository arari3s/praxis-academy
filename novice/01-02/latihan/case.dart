import 'dart:io';

void main() {
  String hari = stdin.readLineSync().trim().toLowerCase();

  String quote;

  switch (hari) {
    case "senin":
      {
        quote = "Mari kita mulai hari senin";
        break;
      }
    case "selasa":
      {
        quote = "Mari kita mulai hari selasa";
        break;
      }
    case "rabu":
      {
        quote = "Mari kita mulai hari rabu";
        break;
      }
  }
  print(quote);
}
