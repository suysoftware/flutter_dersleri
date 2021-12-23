import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
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
        body: Column(
          children: [
            IconButton(
              icon: Icon(
                Icons.account_balance,
              ),
              onPressed: () async {
                User? user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: "safasf@gmail.com", password: "21412412")
                      .then((kullanici) {
                    FirebaseFirestore.instance
                        .collection("users")
                        .doc(user.uid)
                        .set({
                      "UserName": "anan",
                      "UserEmail": "ana2",
                    });
                  });
                }
              },
            ),
            IconButton(
                onPressed: () {
                  User? user = FirebaseAuth.instance.currentUser;
                  if (user != null) {
                    FirebaseFirestore.instance
                        .collection("users")
                        .doc(user.uid)
                        .get()
                        .then((value) {
                      String Name = value.data()!["Name"];
                      print(Name);
                    });
                  }
                },
                icon: Icon(Icons.ac_unit_rounded)),
            IconButton(
                onPressed: () {
                  String aa = "Mehmet2";
                  User? user = FirebaseAuth.instance.currentUser;
                  if (user != null) {
                    FirebaseFirestore.instance
                        .collection("users")
                        .doc(user.uid)
                        .set({
                      "Name": aa,
                    });
                  }
                },
                icon: Icon(Icons.add)),
          ],
        ));
  }
}
