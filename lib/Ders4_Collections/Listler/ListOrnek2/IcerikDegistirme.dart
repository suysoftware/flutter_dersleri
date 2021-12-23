void main() {
  var sayilar = <int>[];

  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  sayilar.add(5); // 1,2,3,4,5-> 2,4,6,8,10

  for (var i = 0; i < sayilar.length; i++) {
    //  int sonuc = sayilar[i];
    sayilar[i] = sayilar[i] * 2;
  }
  for (var s in sayilar) {
    print(s);
  }
}
