// Backward Insertion Sort

main(List<String> args) {
  var a = [5, 4, 3, 2, 1];

  for (var i = 0; i < a.length; i++) {
    var key = a[i];
    var j = i + 1;
    while (j < a.length - 1 && key > a[j]) {
      a[j - 1] = a[j];
      j = j + 1;
    }
    a[j - 1] = key;
  }
  print(a);
}
