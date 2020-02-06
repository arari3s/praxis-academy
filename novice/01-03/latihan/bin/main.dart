void main(List<String> args) {
//   Orang orang = Orang("a", "a@gmail.com", 30, true);
//   orang.showData();
// }

// class Orang {
//   String name;
//   String email;
//   int age;
//   bool status;

//   Orang(this.name, this.email, this.age, this.status);

//   void showData() {
//     print(
//         name + "\n" + email + "\n" + age.toString() + "\n" + status.toString());
//   }

// inheritance
  Guru p = Guru('andi', 5);
  print(p.name);
}

class Siswa {
  String name;
  int age;

  Siswa(this.name, this.age);

  Siswa.newA() {
    name = 'Doggy';
    age = 0;
  }
}

class Guru extends Siswa {
  Guru(String name, int age) : super(name, age);
}
