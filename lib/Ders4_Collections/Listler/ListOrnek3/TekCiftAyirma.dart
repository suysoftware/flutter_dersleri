void main() {
  var sayilar = <int>[];

  sayilar.add(1);
  sayilar.add(23);
  sayilar.add(32);
  sayilar.add(47);
  sayilar.add(59);
  sayilar.add(100);
  sayilar.add(18);
  sayilar.add(54);

  var tekler = <int>[];
  var ciftler = <int>[];

  for (var s in sayilar) {
    int sonuc = s % 2;
    if (sonuc == 0) {
      ciftler.add(s);
    }
    if (sonuc == 1) {
      tekler.add(s);
    }
  }
  print(ciftler);
  print(tekler);
}
