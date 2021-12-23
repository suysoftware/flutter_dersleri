import 'dart:io';

void main() {
  var isimler = <String>[];

  isimler.add("Ahmet");
  isimler.add("Mehmet");
  isimler.add("Hale");
  isimler.add("Jale");
  isimler.add("Emirhan");
  isimler.add("Ufuk");
  isimler.add("Sedat");
  isimler.add("Ercan");

  print("Aratmak için bir isim giriniz");
  late String isim = stdin.readLineSync()!;

  for (var i in isimler) {
    if (i == isim) {
      print("Bulundu");
      break;
    }
  }
}
