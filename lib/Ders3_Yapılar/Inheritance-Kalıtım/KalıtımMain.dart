import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/Araba.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/Arac.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/Nissan.dart';

void main() {
  var araba = Araba("Sedan", "Kırmızı", "Otomatik");

  print(araba.kasaTipi);
  print(araba.vites);
  print(araba.renk);

  var nissan = Nissan("Micra", "Sedan", "Beyaz", "Manuel");

  print(nissan.model);
  print(nissan.kasaTipi);
  print(nissan.renk);
  print(nissan.vites);

  var arac = Arac("Mavi", "Otomatik");

  print(arac.renk);
  print(arac.vites);
}
