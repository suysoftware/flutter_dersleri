import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/Interface1.dart';

class ClassA implements Interface1 {
  @override
  late int degisken;

  @override
  void metod1() {
    print("interface merhaba");
  }

  @override
  String metod2() {
    return "Interface calismasi";
  }
}
