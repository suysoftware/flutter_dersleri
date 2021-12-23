class Kisilerjson {
  late String kisi_id;
  late String kisi_ad;
  late String kisi_tel;

  Kisilerjson(this.kisi_id, this.kisi_ad, this.kisi_tel);

  factory Kisilerjson.fromJson(Map<String, dynamic> json) {
    return Kisilerjson(json["kisi_id"] as String, json["kisi_ad"] as String,
        json["kisi_tel"] as String);
  }
}
