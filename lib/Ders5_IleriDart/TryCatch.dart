void main() {
  var sayilar = <int>[];

  sayilar.add(34);
  sayilar.add(67);
  sayilar.add(11);

  sayilar[1] = 89;

  try {
    sayilar[4] = 89;
    //hata verecek çünkü 4.indeks boş
  } catch (e) {
    print(e);
    print("ListeBoyutunu Aştınız");
  }
}
