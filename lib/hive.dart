import 'dart:io';

import 'package:hive/hive.dart';

// Solve the path problem in hive
// https://api.dart.dev/stable/2.14.3/dart-io/Directory-class.html

Future<void> HiveDB() async {
  var myDir = Directory('myDir');
  Hive.init(myDir.path);
  await Hive.openBox('myDir');
  var box = Hive.box('myDir');

  await box.put('name', ['ahmed', 'amer']);

  var name = box.get('name');

  print('Name: ${name[0]}');
}
