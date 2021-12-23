import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_dersleri/Ders4_Collections/Listler/ListOrnek6/OgrenciListesi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  var ogrenciler = <Ogrenciler>[];

  var initOgrenci = Ogrenciler("102", "ahmet", "11-c");

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

  _ogrenciEkle() {
    var yeniOgrenci = Ogrenciler(t1.text, t2.text, t3.text);

    ogrenciler.add(yeniOgrenci);
    setState(() {});
  }

  _ogrenciSil() {
    ogrenciler.clear();
    setState(() {});
  }

  @override
  void initState() {
    ogrenciler = ogrenciler;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 300,
                width: 390,
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (ctx, idx) {
                    return ListTile(
                      tileColor: Colors.pink,
                      title: Text(ogrenciler[idx].ad.toString() +
                          " // " +
                          ogrenciler[idx].no.toString() +
                          " // " +
                          ogrenciler[idx].sinif.toString()),
                    );
                  },
                  itemCount: ogrenciler.length,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: t1,
            decoration: InputDecoration(labelText: "NO"),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: t2,
            decoration: InputDecoration(labelText: "NAME"),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: t3,
            decoration: InputDecoration(labelText: "SINIF"),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              FloatingActionButton(onPressed: () => _ogrenciEkle()),
              FloatingActionButton(
                onPressed: () => _ogrenciSil(),
                backgroundColor: Colors.red,
              ),
            ],
          )
        ],
      ),

    
    );
  }
}
