
import 'package:http/http.dart' as http;
import 'dart:convert';

// in main 
//   var t = await fetchAlbum();
//   print(t.games[0]['image']['formats']['small']['url']);
//   for (var i in t.games) {
//     print(i['name']);
//   }


class Album {
   String name;
   String id;
   List games;

  Album({
     this.name,
     this.id,
     this.games,
  });


  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'],
      id: json['id'],
      games: json['games'],
    );
  }
}

Future<Album> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://sajad2021.herokuapp.com/Catgs/6155dfe58daa690016fdf896'));

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
