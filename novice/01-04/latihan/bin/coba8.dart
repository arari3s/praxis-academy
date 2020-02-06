//  Named Constructors

main(List<String> args) {
  Dog d = new Dog.newBorn();
  print(d.name);
}

class Dog {
  String name;
  int age;

  Dog(this.name, this.age);

  Dog.newBorn() {
    name = 'Doggy';
    age = 0;
  }
}
