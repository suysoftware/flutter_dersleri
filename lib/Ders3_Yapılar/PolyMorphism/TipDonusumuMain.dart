import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/PolyMorphism/Isci.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/PolyMorphism/Mudur.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/PolyMorphism/Ogretmen.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/PolyMorphism/Personel.dart';

void main() {
  Personel ogretmen = Ogretmen();
  Personel isci = Isci();

  var mudur = Mudur();

  mudur.terfiEttir(ogretmen);
  mudur.terfiEttir(isci);
}
