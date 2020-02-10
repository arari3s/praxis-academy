import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<void> printUsers() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  var response = await request.close();
  var contents;

  await for (var contents2 in response.transform(Utf8Decoder())) {
    contents = contents2;
  }

  var file = File('file.txt');
  var contents2;
  file.writeAsString(contents);

  contents2 = await file.readAsString();
  print(contents2);

  var fileCopy = await File('file-copy.txt').writeAsString(contents2);
  print(await fileCopy.exists());
  print(await fileCopy.length());
}

main() async {
  printUsers();
}
