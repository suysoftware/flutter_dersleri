import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Composition/ORNEK/Category.dart';
import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Composition/ORNEK/Director.dart';

class Movies {
  int movie_id;
  String movie_name;
  int movie_year;

  Category category;
  Director director;

  Movies(this.movie_id, this.movie_name, this.movie_year, this.category,
      this.director);
}
