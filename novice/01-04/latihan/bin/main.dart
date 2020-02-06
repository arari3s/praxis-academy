class Orang<T, A> {
  // penggunaan <T> digunaan untuk memjadikan tipedata yang kita gunakan lebih prifat(lebih aman)
  // huruf "T" bida diganti dengan huruf yang lainnya, tidak mesti "T";
  //
  T nama; // apabila yang diatas diganti menggunakan T, maka tipe data yang dibahnya juga diganti
  A usia;

  Orang(this.nama, this.usia);
}

main(List args) {
// generik
  Orang<String, int> orang =
      Orang('andi', 12); // karena diatas sudah diganti dengan intisial T dan A
  // maka yang disini dijelaskan menggunakan tipe data apa. tujuannya supaya lebih aman data kita

  print(orang.nama);

  // materi list
  List data = List();
  data.add('satu'); //index [0]
  data.add('dua'); //index [1]
  data.add('dua'); //index [2]
  data.add('tiga'); //index [3]

  // materi map
  Map data2 = Map();
  data2['username'] = 'admin';
  data2['password'] = 'admin123';
  data2['username'] =
      'admin2'; //melakukan updater (perubahan) pada key username

  // materi set
  Set data3 = Set();
  data3.add('satu');
  data3.add('dua');
  data3.add('tiga');
  data3.add('empat');
  data3.add('lima');

  print(data);
  print(data2['username']); //melakukan pemanggilan berdasarkan dengan key
  print(data2); //melakukan pemanggilan untuk semua map

  print(data3);
}
