import 'dart:collection';

import 'package:flutter_dersleri/Ders4_Collections/HashSet/HashMap%20Yap%C4%B1s%C4%B1/Ornek1/Kisiler.dart';

void main() {
  var k1 = Kisiler(11111, "Ahmet");
  var k2 = Kisiler(22, "Mehmet");
  var k3 = Kisiler(3333, "Zeynep");

  var kisiler = HashMap<int, Kisiler>();

  kisiler[k1.tcno] = k1;
  kisiler[k2.tcno] = k2;
  kisiler[k3.tcno] = k3;

  var anahtarlar = kisiler.keys;
  for (var a in anahtarlar) {
    var kisi = kisiler[a];

  if(kisi!=null){
 print("*******");
    print("Kisi TC: ${kisi.tcno} //  Kisi Adı: ${kisi.ad}");

  }
   
  }
}
