class Operation {
  int howMany(String kelime, String harf) {
    int donenSayi = 0;
    print(kelime);
    print(harf);
    for (int i = 0; i < kelime.length; i++) {
      String bumu = kelime[i];
      print("bumu :" + bumu);
      if (bumu == harf) {
        donenSayi = donenSayi + 1;
        print(donenSayi.toString());
      }
    }

    return donenSayi;
  }
}
