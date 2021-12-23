import 'dart:io';

import 'package:flutter_dersleri/Ders4_Collections/Listler/ListOrnek8/Adres.dart';
import 'package:flutter_dersleri/Ders4_Collections/Listler/ListOrnek8/Personel.dart';

void main() {
  var personeller = <Personel>[];

  for (var i = 1; i < 4; i++) {
    //ekrandan dğeer almamak için direk kendim tanımladım değeri
    String isim = "Ahmet";
    String il = "Istanbul"; 
    String ilce = "Pendik";
    var adres = Adres(il, ilce);
    var personel = Personel(i, isim, adres);
    personeller.add(personel);
  }
  for (var p in personeller) {
    print("*********");
    print("Personel No: ${p.no}");
     print("Personel Ad: ${p.isim}");
      print("Personel İl: ${p.adres.il}");
      print("Personel İlce: ${p.adres.ilce}");
  }
}
