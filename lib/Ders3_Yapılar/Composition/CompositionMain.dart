import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Composition/Adres.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Composition/Musteriler.dart';

void main() {
  var adres = Adres("Bursa", "Osmangazi");
  var musteri = Musteriler("ahmet", 23, adres);

  print("Müşteri Adı ${musteri.ad}");
  print("Müşteri yaş : ${musteri.yas}");
  print("Müşteri il: ${musteri.adres.il}");
  print("Müşteri ilçe: ${musteri.adres.ilce}");
}
