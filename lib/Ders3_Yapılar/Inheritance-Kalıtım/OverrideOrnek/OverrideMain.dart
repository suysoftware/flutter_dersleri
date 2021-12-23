import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/OverrideOrnek/Hayvan.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/OverrideOrnek/Kedi.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/OverrideOrnek/Kopek.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/OverrideOrnek/Memeli.dart';

void main() {
  var hayvan = Hayvan();

  hayvan.sesCikar();

  var memeli = Memeli();

  memeli.sesCikar();

  var kedi = Kedi();

  kedi.sesCikar();

  var kopek = Kopek();
  kopek.sesCikar();
}
