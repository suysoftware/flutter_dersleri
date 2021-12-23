import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dersleri/Ders11_SharedPreferences/Ornek2/AnasayfaLogin.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> veriYaz() async {
    var ad = await getApplicationDocumentsDirectory();

    var uygulamaDosyalamaYolu = await ad.path;
    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");

    dosya.writeAsString(t1.text);
    t1.text = "";
  }

  Future<void> veriOku() async {
    try {
      var ad = await getApplicationDocumentsDirectory();
      var uygulamaDosyalamaYolu = await ad.path;
      var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");

      String okunanVeri = await dosya.readAsString();

      t1.text = okunanVeri;
    } catch (e) {
      e.toString();
    }
  }

  Future<void> veriSil() async {
    var ad = await getApplicationDocumentsDirectory();
    var uygulamaDosyalamaYolu = await ad.path;
    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");
    if (dosya.existsSync()) {
      dosya.delete();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build methodu çalıştı");
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text("Login Ekrani"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: t1,
                  decoration: InputDecoration(hintText: "KULLANICI ADI"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                        child: Text("Yaz"),
                        onPressed: () {
                          veriYaz();
                        }),
                    RaisedButton(
                        child: Text("Oku"),
                        onPressed: () {
                          veriOku();
                        }),
                    RaisedButton(
                        child: Text("Sil"),
                        onPressed: () {
                          veriSil();
                        }),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
