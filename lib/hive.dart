import 'package:hive/hive.dart';

Future<void> hive_DB() async {
  var box = await Hive.openBox('ahmed');
  
  await box.put('name', 'David');
  
  print('Name: ${box.get('name')}');
  // print('ahmed!!!!');
}


// https://stackoverflow.com/questions/52064568/flutter-trouble-launching-app-for-debug-on-macos