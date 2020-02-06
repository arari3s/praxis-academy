// set

void main(List<String> args) {
  var elements = <String>{};
  elements.add('flourine');
  // elements.addAll(halogens);

  assert(elements.length == 5);

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  constantSet.add('helium');
  print(constantSet);
}
