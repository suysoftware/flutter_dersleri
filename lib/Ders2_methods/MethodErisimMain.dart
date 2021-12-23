import 'package:flutter_dersleri/Ders2_methods/Matematik.dart';

void main() {
  var m = Matematik();

  m.topla(102, 2225);

  double c = m.cikar(10.4, 4.3);
  print("Çıkarma: $c");

  m.carp(20, 2, "Ufuk");

}
