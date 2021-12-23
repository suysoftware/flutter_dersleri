class YonetmenlerJson {
  late String yonetmen_id;
  late String yonetmen_ad;

  YonetmenlerJson(this.yonetmen_id, this.yonetmen_ad);

  factory YonetmenlerJson.fromJson(Map<String, dynamic> json) {
    return YonetmenlerJson(
        json["yonetmen_id"] as String, json["yonetmen_ad"] as String);
  }
}
