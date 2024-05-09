import 'dart:collection';

import 'package:denemestdin/Kisilerhashmap.dart';

void main () {
  var k1 = Kisiler(11111, "pınar");
  var k2 = Kisiler(22222, "max");
  var k3 = Kisiler(33333, "mona");

  var kisiler = HashMap<int, Kisiler>();

  kisiler [k1.tcno] = k1;
  kisiler [k2.tcno] = k2;
  kisiler [k3.tcno] = k3;

  var anahtarlar = kisiler.keys;

  for (var a in anahtarlar) {
    var kisi = kisiler[a];
    print("*****");
    print("Kişi TC No: ${kisi?.tcno}");
    print("Kişi ad: ${kisi?.ad}");
  }
}
