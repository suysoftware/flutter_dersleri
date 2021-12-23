void main() {
  var meyveler = <String>[];

  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Elma");
  meyveler.add("Kivi");
  meyveler.add("Kiraz");

  print(meyveler.isEmpty);
  print(meyveler.length);
  print(meyveler.first); //ilk elemanını verir
  print(meyveler.last); //son elemanı

  print(meyveler.contains("Kiraz")); //liste içinde varsa true yoksa false

  var liste = meyveler.reversed; //içeriği ters listelicek

  print(liste);

  meyveler.sort(); //harfa göre sıralar
  print(meyveler);

  meyveler.removeAt(2); //2.indeksteki bilgiyi siler
  print(meyveler);

  meyveler.remove("Kiraz"); //çıkarılacak şeyi yazıyoruz
  print(meyveler);
}
