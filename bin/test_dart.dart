
import 'package:test_dart/hive.dart';

main() async {
  final stopwatch = Stopwatch()..start();
  // await second(5).then((value) {
  //   print('Elapse: ${stopwatch.elapsed}');
  // // });
  // await git_ahmed('https://jsonplaceholder.typicode.com/posts').then((value) {
  //   print('Elapse: ${stopwatch.elapsed}');
  // });
  // await git_ahmed('https://sajad2021.herokuapp.com/Games').then((value) {
  //   print('Elapse: ${stopwatch.elapsed}');
  // });
  await HiveWrite('1', 'ahmed').then((value) {
    print('Elapse: ${stopwatch.elapsed}');
  });
}
