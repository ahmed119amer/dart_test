main() async {
  // ignore: omit_local_variable_types
  bool r = await kappa(true);
  print('object : ${await r}');
  // print(await foo(await r));
  // GGG(r);
}


Future<bool> kappa(u) async {
  await Future.delayed(Duration(seconds: 1));
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