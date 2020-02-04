// Same number in both arrays

main() {
  var a = [1, 2, 3, 4, 5];
  var b = [1, 2, 3, 4, 5];

  var i = 0;
  var j = 0;

  while (i == (a.length - 1) && j == (b.length - 1)) {
    if (a[i] < b[j]) {
      print(i = i + 1);
    } else {
      if (a[i] > b[j]) {
        print(j = j + 1);
      } else {
        true;
      }
    }
  }
  print(false);
}
