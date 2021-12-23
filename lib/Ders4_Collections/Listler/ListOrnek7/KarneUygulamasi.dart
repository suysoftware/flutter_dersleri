import 'dart:io';

void main() {
  while (true) {
    print("Çıkmak için (1)- Devam etmek için diğer sayilar");
    int cikis = int.parse(stdin.readLineSync()!);

    if (cikis == 1) {
      print("Cikis yapildi");
    }
  }
}
