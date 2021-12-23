import 'dart:collection';

void main() {
  var sayilar = HashSet<int>();

  var isimler = HashSet.from(["ahmet", "mehmet"]);

  var meyveler = HashSet<String>();
  meyveler.add("Portakal");
  meyveler.add("Çilek");
  meyveler.add("Kivi");
  meyveler.add("Muz");

  print(meyveler);

  meyveler.add("Portakal"); //aynısı olursa kaydetmez
  print(meyveler);

  print(meyveler.elementAt(0));

  ///0.indextekini alıyor

  String gelenSonuc = meyveler.elementAt(0);
  print(gelenSonuc);

  print(meyveler.length);
  print(meyveler.isEmpty);

  print(meyveler.contains("Muz"));

  for (var m in meyveler) {
    print("Sonuc: $m");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print(meyveler.elementAt(i));
  }

  meyveler.remove("Kivi");

  print(meyveler);

  meyveler.clear();
  print(meyveler);
}
