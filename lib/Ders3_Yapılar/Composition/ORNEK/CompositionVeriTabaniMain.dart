import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Composition/ORNEK/Category.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Composition/ORNEK/Director.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Composition/ORNEK/Movies.dart';

void main() {
  var c1 = Category(1, "Dram");
  var c2 = Category(2, "Komedi");

  var d1 = Director(1, "Nuri Bilge Ceylan");
  var d2 = Director(2, "Quetin Tarantino");

  var m1 = Movies(1, "Django", 2013, c1, d2);

  print("Film id: ${m1.movie_id}");
  print("Film ad: ${m1.movie_name}");
  print("Film yıl: ${m1.movie_year}");
  print("Film Kategori: ${m1.category.category_name}");
  print("Film yönetmen: ${m1.director.director_name}");
}
