class Fire_Kisiler{

  late String kisi_ad;
  late int kisi_yas;

  Fire_Kisiler(this.kisi_ad,this.kisi_yas);

  factory Fire_Kisiler.fromJson(Map<dynamic,dynamic>json){
    return Fire_Kisiler(json["kisi_ad"]as String,json["kisi_yas"]as int);
  }
}