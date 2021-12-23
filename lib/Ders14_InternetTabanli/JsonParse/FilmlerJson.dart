import 'package:flutter_dersleri/Ders14_InternetTabanli/JsonParse/KategorilerJson.dart';
import 'package:flutter_dersleri/Ders14_InternetTabanli/JsonParse/YonetmenlerJson.dart';

class FilmlerJson {
  late String film_id;
  late String film_ad;
  late String film_yil;
  late String film_resim;
  late KategorilerJson kategori;
  late YonetmenlerJson yonetmen;

  FilmlerJson(this.film_id, this.film_ad, this.film_yil, this.film_resim,
      this.kategori, this.yonetmen);

  factory FilmlerJson.fromJson(Map<String, dynamic> json) {
    return FilmlerJson(
        json["film_id"] as String,
        json["film_ad"] as String,
        json["film_yil"] as String,
        json["film_resim"] as String,
        KategorilerJson.fromJson(json["kategori"]),
        YonetmenlerJson.fromJson(json["yonetmen"]));
  }
}
