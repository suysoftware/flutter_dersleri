class KategorilerJson {
  late String kategori_id;
  late String kategori_ad;

  KategorilerJson(this.kategori_id, this.kategori_ad);

  factory KategorilerJson.fromJson(Map<String, dynamic> json) {
    return KategorilerJson(
        json["kategori_id"] as String, json["kategori_ad"] as String);
  }
}
