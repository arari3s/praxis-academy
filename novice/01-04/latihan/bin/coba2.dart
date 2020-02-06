// list

void main(List<String> args) {
  var list = [1, 2, 3];
  var list2 = [0, ...?list];
  assert(list2.length == 1);

  print(list2);
}
