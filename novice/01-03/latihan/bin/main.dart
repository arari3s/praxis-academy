void main(List<String> args) {
  Orang orang = Orang("a", "a@gmail.com", 30, true);
  orang.showData();
}

class Orang {
  String name;
  String email;
  int age;
  bool status;

  Orang(this.name, this.email, this.age, this.status);

  void showData() {
    print(
        name + "\n" + email + "\n" + age.toString() + "\n" + status.toString());
  }
}
