import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/ORNEK/Saray.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/ORNEK/Villa.dart';

void main() {
  var topkapiSarayi = Saray(10, 100);
  var bogazVilla = Villa(true, 20);

  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);
  
  
}
