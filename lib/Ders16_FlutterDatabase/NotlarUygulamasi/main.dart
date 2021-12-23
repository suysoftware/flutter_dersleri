import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dersleri/Ders16_FlutterDatabase/NotlarUygulamasi/NotDetaySayfa.dart';
import 'package:flutter_dersleri/Ders16_FlutterDatabase/NotlarUygulamasi/NotKayitSayfa.dart';
import 'package:flutter_dersleri/Ders16_FlutterDatabase/NotlarUygulamasi/Notlar.dart';


Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var refNotlar = FirebaseDatabase.instance.reference().child("notlar");

  Future<bool> uygulamayiKapat() async {
    await exit(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            uygulamayiKapat();
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Notlar Uygulaması",style: TextStyle(color: Colors.white,fontSize: 16),),
            StreamBuilder<dynamic>(
              stream: refNotlar.onValue,
              builder: (context,event){
                  if(event.hasData) {
                    var notlarListesi = <Notlar>[];

                    var gelenDegerler = event.data.snapshot.value;

                    if(gelenDegerler != null){
                      gelenDegerler.forEach((key,nesne){
                        var gelenNot = Notlar.fromJson(key, nesne);
                        notlarListesi.add(gelenNot);
                      });
                    }

                    double ortalama = 0.0;

                    if(!notlarListesi.isEmpty){
                      double toplam = 0.0;

                      for(var n in notlarListesi){
                        toplam = toplam + (n.not1+n.not2)/2;
                      }

                      ortalama = toplam / notlarListesi.length;
                    }

                    return Text("Ortalama : ${ortalama.toInt()}",style: TextStyle(color: Colors.white,fontSize: 14),);
                  }else{
                    return Text("Ortalama : 0",style: TextStyle(color: Colors.white,fontSize: 14),);
                  }
              }
            ),
          ],
        ),
      ),
      body: WillPopScope(
        onWillPop: uygulamayiKapat,
        child: StreamBuilder<dynamic>(
          stream: refNotlar.onValue,
          builder: (context,event){
            if(event.hasData){
              var notlarListesi = <Notlar>[];

              var gelenDegerler = event.data.snapshot.value;

              if(gelenDegerler != null){
                gelenDegerler.forEach((key,nesne){
                  var gelenNot = Notlar.fromJson(key, nesne);
                  notlarListesi.add(gelenNot);
                });
              }

              return ListView.builder(
                itemCount: notlarListesi.length,
                itemBuilder: (context,indeks){
                  var not = notlarListesi[indeks];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotDetaySayfa(not: not,)));
                    },
                    child: Card(
                      child: SizedBox(height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(not.ders_adi,style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(not.not1.toString()),
                            Text(not.not2.toString()),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }else{
              return Center();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotKayitSayfa()));
        },
        tooltip: 'Not Ekle',
        child: Icon(Icons.add),
      ),
    );
  }
}
