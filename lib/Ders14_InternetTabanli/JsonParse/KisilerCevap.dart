import 'package:flutter_dersleri/Ders14_InternetTabanli/JsonParse/KisilerJson.dart';

class KisilerCevap {
  late int success;

  late List<Kisilerjson> kisilerListesi;

  KisilerCevap(this.success, this.kisilerListesi);

  factory KisilerCevap.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["kisiler"] as List;
    List<Kisilerjson> kisilerListesi = jsonArray
        .map((jsonArrayNesnesi) => Kisilerjson.fromJson(jsonArrayNesnesi))
        .toList();
    return KisilerCevap(json["success"] as int, kisilerListesi);
  }
}
