import 'package:flutter/material.dart';
import 'package:flutter_dersleri/Ders11_SharedPreferences/Ornek2/AnasayfaLogin.dart';
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
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> girisKontrol() async {
    var ka = t1.text;
    var s = t2.text;
    if (ka == "admin" && s == "123") {
      var sp = await SharedPreferences.getInstance();
      sp.setString("Kullaniciadi", ka);
      sp.setString("Sifre", s);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AnaSayfaSp()));
    } else {
      print("Giris hatal");
    }
  }

  Future<void> otomatikGiris() async {
    var sp = await SharedPreferences.getInstance();
    String? klln = sp.getString("Kullaniciadi");
    String? sfr = sp.getString("Sifre");

    if (klln == "admin" && sfr == "123") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AnaSayfaSp()));
    }
  }

  @override
  void initState() {
    super.initState();
    otomatikGiris();
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
                TextField(
                  controller: t2,
                  decoration: InputDecoration(hintText: "PAROLA"),
                  obscureText: true,
                ),
                RaisedButton(
                    child: Text("Geçiş Yap"),
                    onPressed: () {
                      girisKontrol();
                    })
              ],
            ),
          ),
        ));
  }
}
