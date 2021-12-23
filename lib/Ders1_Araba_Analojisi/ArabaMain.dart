import 'package:flutter_dersleri/Ders1_Araba_Analojisi/Araba.dart';

void main() {
  var bmw = Araba();

  //değer atama
  bmw.renk = "Mavi";
  bmw.hiz = 200;
  bmw.calisiyormu = true;

  //değer okuma

  String gelenRenk = bmw.renk;

  print(bmw.renk);
  print(bmw.hiz);
  print(bmw.calisiyormu);

  bmw.renk = "Kırmızı";
  print(bmw.renk);

  bmw.bilgiAl();

  bmw.durdur();

  bmw.bilgiAl();

  bmw.calistir();
  bmw.bilgiAl();
  print("///////////");

  bmw.hizlan(50);
  bmw.bilgiAl();
  print("///////////");

  bmw.yavasla(30);
  bmw.bilgiAl();
  print("///////////");
  var limuzin = Araba();

  limuzin.renk = "Beyaz";
  limuzin.hiz = 100;
  limuzin.calisiyormu = true;

  limuzin.bilgiAl();

  limuzin.durdur();
  limuzin.bilgiAl();
}
