import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/ClassA.dart';

void main() {
  var a = ClassA();

  print(a.degisken);
  a.metod1();
  String gelenSonuc = a.metod2();

  print(gelenSonuc);
}
