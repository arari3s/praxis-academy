// Insertion Sort
main(List<String> args) {
  var a = [1, 2, 3, 4, 5];

  for (var i = 0; i < a.length; i++) {
    var key = a[i];
    var j = i;
    while (j > 0 && a[j - 1] > key) {
      a[j] = a[j - 1];
      j = j - 1;
    }
    a[j] = key;
  }
  print(a);
}
