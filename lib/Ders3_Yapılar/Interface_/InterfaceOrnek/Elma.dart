import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/InterfaceOrnek/Eatable.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Interface_/InterfaceOrnek/Squeezable.dart';

class Elma implements Squeezable, Eatable {
  @override
  void howToEat() {
    print("Dilimle ve Ye");
  }

  @override
  void howToSqueeze() {
    print("Blendır ile sık");
  }
}
