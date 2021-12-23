import 'package:flutter/material.dart';
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
      body: WebView(
        initialUrl: "https://www.turgev.org/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
