// list

void main(List<String> args) {
  var list = [1, 2, 3];

  assert(list.length == 3);
  assert(list[1] == 2);

  list[1];
  assert(list[1] == 1);

  print(list);
}
