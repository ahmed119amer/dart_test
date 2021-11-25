import 'dart:math';

te() {
  var p = ['1', '2', '3'];
  print(p.reversed.toList());
}

/// distance by location
double calculateDistance(lat1, lon1, lat2, lon2) {
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
      print(12742 * asin(sqrt(a)));
  return 12742 * asin(sqrt(a));
}

/// price by distance
Delivery_price(double distance) {
  if (distance > 10) {
    print('10000');
  } else {
    print('5000');
  }
}
