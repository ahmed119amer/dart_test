main() {
  // var i = Amer('ahmed');
  // Amer.bbb();
  // Gazl('amer');
  print(Point(10.2,3.2).x);
}

class Amer {
  String r = 'gazl';
  Amer(this.r);
  Amer.bbb() {
    print(this.r);
    print(r);
  }
}

class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }
}

class Gazl {
  Gazl(String name) {
    print(name);
  }
}

/*
  var now =
      'طلب نشرمطلوب موظفة مبيعاتلشركه بيت القصيد لهندسة الديكوراوقات الدوام من الساعه ١٠ صباحا حتى ٥ مساءا المطلوب هو متابعه حاسبة الشركة من حيث الوصولات للزبائن وجرد المواد وغيرهاالافضلية لسكنه شارع ١٤ تموز او شارع المقاولينالتواصل عبر الارقام المبينة بالصورة المرفقة';
  var ahmed = 'ahmed amer sjad braa gazal';
  print(GetTypeJobs(now,'عبر'));

  var string = 'Dart strings';
  print(now.contains('مطلوب')); // true
  print(string.contains(RegExp(r'[A-Z]'))); // true
  print(ahmed.contains(RegExp(r'[ا-ي]'))); // false
  string.contains('X', 1); // false
  string.contains(RegExp(r'[A-Z]'), 1); // false
*/
Map GetTypeJobs(list, typeJo) {
  var typeJobe = {};
  if (list.contains(typeJo)) {
    typeJobe['type'] = typeJo;
    print(typeJo);
  } else {
    print('No Type Existing');
  }
  return typeJobe;
}

/*
  // /hive
 await Hive.init('ahmed');
  var box = await Hive.openBox('testBox');

  //await box.put('1', '88888888888');

  print('Name: ${box.get('1')}');
  await box.close();
*/

//print(now.weekday);

//print('${now.year}/${now.month}/${now.day}');

//print('berlinWallFell:${berlinWallFell}');
// print('moonLanding:${moonLanding}');
