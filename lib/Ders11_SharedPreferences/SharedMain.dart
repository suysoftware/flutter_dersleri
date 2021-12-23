import 'package:flutter/material.dart';
import 'package:flutter_dersleri/Ders11_SharedPreferences/SayfaA.dart';
import 'package:flutter_dersleri/Ders8_ListViewBuilder/DetaySayfa.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
    Future<void> veriKaydi() async {
    var sp = await SharedPreferences.getInstance();

    sp.setString("ad", "ahmet");
    sp.setInt("yas", 18);
    sp.setDouble("boy", 1.78);
    sp.setBool("Bekarmi", true);
    var arkadasListe = <String>[];
    arkadasListe.add("Ece");
    arkadasListe.add("Ali");

    sp.setStringList("arkadasListe", arkadasListe);
  }
  @override
  Widget build(BuildContext context) {
    print("build methodu çalıştı");
    return Scaffold(
        appBar: AppBar(
          title: Text("Flttest"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Geçiş Yap"),
                  onPressed: () {
                    veriKaydi();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SayfaA()));
                  })
            ],
          ),
        ));
  }
}
