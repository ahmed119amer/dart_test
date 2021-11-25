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
  // await box.put('name', null);
  // print(box.containsKey('key'));

  await box.delete('name');
  // print(box.containsKey('key'));
  print(box.get('name'));
}

/// write on hive
Future HiveWrite(String kay, dynamic value) async {
  var myDir = Directory('hivePath');
  Hive.init(myDir.path);
  await Hive.openBox('hivedb');
  var box = Hive.box('hivedb');
  await box.put(kay, value);
  print(box.get(kay));
}

/// read in hive
Future<List> HiveRead(String kay) async {
  var myDir = Directory('hivePath');
  Hive.init(myDir.path);
  await Hive.openBox('hivedb');
  var box = Hive.box('hivedb');
  print(box.get(kay));
  if (box.get(kay) == null) {
    return [];
  } else {
    return box.get(kay);
  }
}

/// delete kay hive
Future<void> HiveDelete(String kay) async {
  var myDir = Directory('hivePath');
  Hive.init(myDir.path);
  await Hive.openBox('hivedb');
  var box = Hive.box('hivedb');
  await box.delete(kay);
  // print(box.containsKey('key'));
  print(box.get(kay));
}
