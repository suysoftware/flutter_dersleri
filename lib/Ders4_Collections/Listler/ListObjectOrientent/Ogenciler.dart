class Ogrenciler {
  late int no;
  late String ad;
  late String sinif;

  Ogrenciler(this.no, this.ad, this.sinif);

  @override
  int get hashCode => this.no;

///burada hashSet örneğinde kulalnırken nosuna göre bir kıyaslama yapıyor
///eğer aynı veriden tekrar gelirse eklemiyor
  bool operator ==(Object other) {
    if (no == (other as Ogrenciler).no) {
      return true;
    } else {
      return false;
    }
  }
}
