import 'dart:convert';

import 'package:http/http.dart' as http;


// in main 
  // List t = await git_ahmed();
  // Map m = t[4];
  // Map inmap = m['games'][0];
  // // print(inmap['type']);
  // for (Map i in t) {
  //   print(i['name']);
  // }

Future git_ahmed() async {
  final response =
      await http.get(Uri.parse('https://sajad2021.herokuapp.com/Catgs'));
  return jsonDecode(response.body);
}