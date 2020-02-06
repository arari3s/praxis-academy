// maps
void main(List<String> args) {
  // var gifts = {
  //   // key  :  value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 'golden rings'
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 'argon',
  // };

  // anda juga bisa membuat maps dengan konstraktor
  var gifts = Map();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print('');
  print(gifts);
  print('-------------------------');
  print(nobleGases);
  print('');
}
