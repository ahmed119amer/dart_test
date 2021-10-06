import 'package:hive/hive.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

Future<void> Sembast() async {
  // File path to a file in the current directory
  String dbPath = 'sample.db';
  DatabaseFactory dbFactory = databaseFactoryIo;

// We use the database factory to open the database
  Database db = await dbFactory.openDatabase(dbPath);
  var store = StoreRef.main();

  // await store.record('title').put(db, 'Simple application');
  // await store.record('version').put(db, 10);
  // await store.record('settings').put(db, {'offline': true});
  var title = await store.record('title').get(db) as String;
  var version = await store.record('version').get(db) as int;
  var settings = await store.record('settings').get(db) as Map;
  print(settings['offline']);
}

void Create_sembast(){

}


// https://stackoverflow.com/questions/52064568/flutter-trouble-launching-app-for-debug-on-macos