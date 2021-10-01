import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
  List t = await git_ahmed();
  Map m = t[4];
  Map inmap = m['games'][0];
  print(inmap['type']);
  for (Map i in t) {
    print(i['games']);
  }
}

Future git_ahmed() async {
  final response =
      await http.get(Uri.parse('https://sajad2021.herokuapp.com/Catgs'));
  return jsonDecode(response.body);
}

// var m = await fetchAlbum();
// print(m.title);
class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/2'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
