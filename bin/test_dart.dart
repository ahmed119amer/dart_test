import 'package:hive/hive.dart';

void main() async {
  
  // var directory = await getApplicationDocumentsDirectory();
  // Hive.init();
  var box = await Hive.openBox('myBox');
  // var box = Hive.box('myBox');
  await box.put('name', 'David');
  var name = box.get('name');
  print('Name: $name');
}
