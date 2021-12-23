import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/InterfaceOrnek/AmasyaElmasi.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/InterfaceOrnek/Aslan.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/InterfaceOrnek/Eatable.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/InterfaceOrnek/Elma.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/InterfaceOrnek/Tavuk.dart';

void main() {
  var aslan = Aslan();

  Eatable tavuk = Tavuk();

  tavuk.howToEat();

  var elma = Elma();
  elma.howToEat();
  elma.howToSqueeze();

  Elma amasyaElmasi = AmasyaElmasi();

  amasyaElmasi.howToEat();
  amasyaElmasi.howToSqueeze();
}
