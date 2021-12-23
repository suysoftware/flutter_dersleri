import 'dart:collection';

void main() {
  var iller = HashMap<int, String>();

  iller[16] = "Bursa";

  iller[34] = "Istanbul";

  print(iller);

  iller[16] = "Yeni Bursa";
  print(iller);

  String veri = iller[34].toString();
  print(veri);
  print(iller[34]);

  print(iller.length);

  print(iller.isEmpty);

  print(iller.containsKey(17));
  print(iller.containsValue("Istanbul"));

  var anahtarlar = iller.keys;
  for (var a in anahtarlar) {
    print("Sonuc : ${iller[a]}");
  }

  iller.remove(16);
  print(iller);






}
