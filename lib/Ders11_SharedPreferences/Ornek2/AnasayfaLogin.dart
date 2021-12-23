import 'package:flutter/material.dart';
import 'package:flutter_dersleri/Ders11_SharedPreferences/Ornek2/OrnekSPLogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnaSayfaSp extends StatefulWidget {
  const AnaSayfaSp({Key? key}) : super(key: key);

  @override
  _AnaSayfaSpState createState() => _AnaSayfaSpState();
}

class _AnaSayfaSpState extends State<AnaSayfaSp> {
  String spKullaniciAdi = "";
  String spSifre = "";

  Future<void> oturumBilgisiOku() async {
    var sp = await SharedPreferences.getInstance();

    setState(() {
      spKullaniciAdi = sp.getString("Kullaniciadi") ?? "kullanici adi yok";
      spSifre = sp.getString("Sifre") ?? "sifre yok";
    });
  }

  Future<void> cikisYap() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("Kullaniciadi");
    sp.remove("Sifre");
  }

  @override
  void initState() {
    oturumBilgisiOku();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Anasayfa"),
          actions: [
            IconButton(
                onPressed: () {
                  cikisYap();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kullanici adi: $spKullaniciAdi",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Sifre: $spSifre",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
        ));
  }
}
