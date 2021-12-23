import 'package:flutter_dersleri/Ders4_Collections/Listler/ListObjectOrientent/Ogenciler.dart';

void main() {
  var o1 = Ogrenciler(100, "Ahmet", "10F");
  var o2 = Ogrenciler(200, "Mehmet", "12A");
  var o3 = Ogrenciler(300, "Zeynep", "9C");

  var ogrenciler = <Ogrenciler>[];
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  print("ilk hali");

  for (var o in ogrenciler) {
    print("************");
    print("öğrenci no:${o.no}");
    print("Örenci ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }
  Comparator<Ogrenciler> siralama1 =
      (x, y) => x.no.compareTo(y.no); // küçükten büyüğe

  ogrenciler.sort(siralama1);
  print("Sayisal küçükten büyüğe");
  for (var o in ogrenciler) {
    print("************");
    print("öğrenci no:${o.no}");
    print("Örenci ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }

  Comparator<Ogrenciler> siralama2 =
      (y, x) => x.no.compareTo(y.no); // büyükten küçüğe
  ogrenciler.sort(siralama2);
  print("Sayisal büyükten küçüğe ");
  for (var o in ogrenciler) {
    print("************");
    print("öğrenci no:${o.no}");
    print("Örenci ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }

  Comparator<Ogrenciler> siralama3 = (x, y) => x.ad.compareTo(y.ad);
  ogrenciler.sort(siralama3);
  print("Metinsel küçükten büyüğe ");
  for (var o in ogrenciler) {
    print("************");
    print("öğrenci no:${o.no}");
    print("Örenci ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }

 Comparator<Ogrenciler> siralama4 = (y, x) => x.ad.compareTo(y.ad);
 ogrenciler.sort(siralama4);
   print("Metinsel büyükten küçüğe ");
  for (var o in ogrenciler) {
    print("************");
    print("öğrenci no:${o.no}");
    print("Örenci ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }





}
