class GenericClass<T> {
  T ob;
  GenericClass(T o) {
    ob = o;
  }
  T getob() {
    return ob;
  }

  void showType() {
    print('Tipe of T is ' + ob.runtimeType.toString());
  }
}

void main(List<String> args) {
  // Create a Gen reference for Integers
  GenericClass<int> iob = GenericClass<int>(88);
  iob.showType();

  // no cast is needed
  int v = iob.getob();
  print('value: ' + v.toString());

  // Create a Gen object for Strings
  GenericClass<String> strob = GenericClass<String>('Generic Test');
  strob.showType();

  String str = strob.getob();
  print('value ' + str);
}
