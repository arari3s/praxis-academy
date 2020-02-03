void main() {
  print('Hello World!');

  var name = 'Arlan Ariandi Trislis';
  var age = 23;
  var hobby = ['Ngoding', 'Ngegame'];
  var image = {
    'tags': ['ngegame'],
  };

  if (age >= 20) {
    print('Keren');
  } else {
    print('Biasa');
  }

  for (var object in hobby) {
    print(object);
  }

  for (int mount = 1; mount <= 12; mount++) {
    print(mount);
  }

  while (age < 19) {
    age += 1;
  }
}
