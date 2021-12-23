import 'package:flutter/material.dart';
import 'package:flutter_dersleri/Ders8_ListViewBuilder/DetaySayfa.dart';
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int _counter = 0;
  var ulkeler = [
    "Türkiye",
    "Almanya",
    "Irak",
    "Fransa",
    "Hollanda",
    "Amerika",
    "Kolombiya",
    "Arjantin",
    "İtalya",
    "İspanya",
    "Yunanistan",
    "Suriye",
    "Libya",
    "Mısır",
    "Ürdün",
    "Gürcistan",
    "Azerbaycan",
    "Çin",
    "Rusya",
    "Ukrayna",
    "Slovenya",
    "Slovakya",
    "Hırvatistan",
    "Macaristan",
    "Makedonya",
    "Avusturya",
    "Belçika",
    "Bulgaristan",
    "Kosova",
    "Yugoslavya"
  ];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    print("initstate() çalıştı");
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      //uygulamalar arası geçişte
      //yukarıdan saati çekince
      //diger yukarıdan çekilen sürgü ile
      print("inactive çalisti");
    }

    if (state == AppLifecycleState.paused) {
      _counter = 31;
      // altta atıldı
      print("paused çalisti");
    }

    if (state == AppLifecycleState.resumed) {
      //alta atıp geri gelince

      print("resumed çalisti");
    }

    if (state == AppLifecycleState.detached) {
      //androiddeki geri tuşu
      print("detached çalisti");
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    print("build methodu çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, indeks) {
          return GestureDetector(
            onTap: () {
              print(ulkeler[indeks] + " Seçildi.");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetaySayfa(ulkeAdi: ulkeler[indeks],)));
                            },
                            child: CircleAvatar()),
                      ),
                      Text(ulkeler[indeks]),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
