import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:test_dart/smple_fetcch_json.dart';
import 'package:test_dart/work_with_api.dart';

main() async {
  await postData('http://localhost:1337/Games');

  // await updateData('http://localhost:1337/Games/6159e86c6248be24bc1bf922');
  // await DeleteData('http://localhost:1337/Games/6159e86c6248be24bc1bf922');
}

Future<http.Response> createAlbum(String title) {
  return http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
}
