import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';

void main() {
  http.get('https://jsonplaceholder.typicode.com/todos/1').then((value) {
    print(value);
  });
}
