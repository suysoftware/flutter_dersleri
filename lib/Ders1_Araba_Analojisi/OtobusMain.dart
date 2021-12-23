import 'package:flutter_dersleri/Ders1_Araba_Analojisi/Otobus.dart';

void main() {
  var kamilKoc = Otobus();

  //deger atama
  kamilKoc.kapasite = 50;
  kamilKoc.nereden = "Bursa";
  kamilKoc.nereye = "Ankara";
  kamilKoc.mevcutYolcu = 10;

  //deger okuma

  int gelenKapasite = kamilKoc.kapasite; //buda bir alternatif
  print(gelenKapasite);

  print(kamilKoc.kapasite);
  print(kamilKoc.nereden);

  kamilKoc.bilgiAl();

  kamilKoc.yolcuAl(2);
  kamilKoc.bilgiAl();

  var metroTurizm = Otobus();

  metroTurizm.kapasite = 10;
  metroTurizm.nereden = "Bursa";
  metroTurizm.nereye = "Balıkesir";
  metroTurizm.mevcutYolcu = 5;

  metroTurizm.bilgiAl();
  metroTurizm.yolcuAl(3);
  metroTurizm.bilgiAl();
}
