import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/PolyMorphism/Isci.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/PolyMorphism/Ogretmen.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/PolyMorphism/Personel.dart';

class Mudur extends Personel {
  void iseAl(Personel p) {
    p.iseAlindi();
  }

  void terfiEttir(Personel p) {
    if (p is Ogretmen) {
      p.maasArttir();
    }
    if (p is Isci) {
      print("İşçiler terfi alamaz");
    }
  }
}
