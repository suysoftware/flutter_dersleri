import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dersleri/Ders16_FlutterDatabase/Ornek_RealtimeDB/Fire_Kisiler.dart';

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

class _MyHomePageState extends State<MyHomePage> {
// ilkornek// var refTest = FirebaseDatabase.instance.ref().child("test");
  var refKisiler = FirebaseDatabase.instance.ref().child("kisiler_tablo");

  Future<void> kisiEkle() async {
    var bilgi = HashMap<String, dynamic>();
    bilgi["kisi_ad"] = "Zeynep";
    bilgi["kisi_yas"] = 35;

    refKisiler.push().set(bilgi);
  }

  Future<void> kisiSil() async {
    refKisiler.child("-MrZ5JLSAXFEKllLsxDr").remove();
  }

  Future<void> kisiGuncelle() async {
    var guncelbilgi = HashMap<String, dynamic>();
    guncelbilgi["kisi_ad"] = "Yeni Zeynep";
    guncelbilgi["kisi_yas"] = 99;

    refKisiler.child("-MrZ5TTrSyU0XdAPntw1").update(guncelbilgi);
  }

  Future<void> tumKisiler() async {
    refKisiler.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value as Map;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Fire_Kisiler.fromJson(nesne);

          print("**********");
          print("Kisi key: $key");
          print("Kisi adi: ${gelenKisi.kisi_ad}");
          print("Kisi yasi: ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  Future<void> tumKisilerOnce() async {
    refKisiler.once().then((snapshot) {
      var gelenDegerler = snapshot.snapshot.value as Map;
      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Fire_Kisiler.fromJson(nesne);

          print("**********");
          print("Kisi key: $key");
          print("Kisi adi: ${gelenKisi.kisi_ad}");
          print("Kisi yasi: ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  Future<void> esitlikArama() async {
    var sorgu = refKisiler.orderByChild("kisi_ad").equalTo("Ece");

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value as Map;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Fire_Kisiler.fromJson(nesne);

          print("**********");
          print("Kisi key: $key");
          print("Kisi adi: ${gelenKisi.kisi_ad}");
          print("Kisi yasi: ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  Future<void> limitliVeri() async {
    var sorgu = refKisiler.limitToFirst(3);
    //last yaparsan son 2 yi alır
    //firs ilk 2 veya 3 ne yazarsan

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value as Map;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Fire_Kisiler.fromJson(nesne);

          print("**********");
          print("Kisi key: $key");
          print("Kisi adi: ${gelenKisi.kisi_ad}");
          print("Kisi yasi: ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  Future<void> degerAraligi() async {
    var sorgu = refKisiler.orderByChild("kisi_yas").startAt(18).endAt(40);

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value as Map;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Fire_Kisiler.fromJson(nesne);

          print("**********");
          print("Kisi key: $key");
          print("Kisi adi: ${gelenKisi.kisi_ad}");
          print("Kisi yasi: ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    //esitlikArama();
    limitliVeri();
    //kisiEkle();
    // kisiSil();
    // kisiGuncelle();
    //tumKisiler();
    // tumKisilerOnce();
    // ilkornek // var bilgi = HashMap<String, dynamic>();
    // ilkornek //bilgi["mesaj"] = "merhaba";
    // ilkornek //refTest.push().set(bilgi);
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
              onPressed: () async {},
            ),
          ],
        ));
  }
}
