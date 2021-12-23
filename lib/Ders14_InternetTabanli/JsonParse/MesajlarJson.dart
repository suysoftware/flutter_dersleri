class MesajlarJson {
  int mesaj_kod;
  String mesaj_icerik;

  MesajlarJson(this.mesaj_kod, this.mesaj_icerik);

  factory MesajlarJson.fromJson(Map<String, dynamic> json) {
    return MesajlarJson(json["mesaj_kod"] as int, json["mesaj_icerik"] as String);
  }
}
