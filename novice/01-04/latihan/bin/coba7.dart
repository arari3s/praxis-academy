// Classes in Dart

main(List<String> args) {
  Dog d = new Dog('Duffy', 2);
  print(d.name);
}

class Dog {
  String name;
  int age;

  Dog(this.name, this.age);
}
