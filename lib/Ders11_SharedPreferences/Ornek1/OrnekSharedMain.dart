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
  int sayac = 0;

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences.getInstance();

    sayac = sp.getInt("sayac") ?? 0;

    setState(() {
      sayac = sayac + 1;
    });

    sp.setInt("sayac", sayac);
  }

  @override
  void initState() {
    sayacKontrol();
    super.initState();
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
              Text("Açılış sayisi:$sayac", style: TextStyle(fontSize: 50)),
              RaisedButton(
                  child: Text("Geçiş Yap"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SayfaA()));
                  })
            ],
          ),
        ));
  }
}
