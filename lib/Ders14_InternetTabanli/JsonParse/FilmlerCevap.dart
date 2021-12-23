import 'package:flutter_dersleri/Ders14_InternetTabanli/JsonParse/FilmlerJson.dart';

class FilmlerCevap {
  late int success;
  late List<FilmlerJson> filmlerListesi;

  FilmlerCevap(this.success, this.filmlerListesi);

  factory FilmlerCevap.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["filmler"] as List;

    List<FilmlerJson> filmlerListesi = jsonArray
        .map((jsonArrayNesnesi) => FilmlerJson.fromJson(jsonArrayNesnesi))
        .toList();

    return FilmlerCevap(json["success"] as int, filmlerListesi);
  }
}
