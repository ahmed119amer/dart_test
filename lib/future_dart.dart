Future<String> kappa(u) async {
  second(3);
  await Future.delayed(Duration(seconds: 3));
  return u;
}

Future<bool> foo(Future<bool> f) async {
  var k = await f;
  return k;
}

GGG(Future<bool> r) async {
  var y = await r;
  print('DDDD : $y');
}

Future second(timeSecend) async {
  for (var i = 1; i <= timeSecend; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}
