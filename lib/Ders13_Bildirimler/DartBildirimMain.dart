import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(DartBildirimMain());
}

class DartBildirimMain extends StatelessWidget {
  const DartBildirimMain({Key? key}) : super(key: key);

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
  var flp = FlutterLocalNotificationsPlugin();

  Future<void> kurulum() async {
    var iosAyari = IOSInitializationSettings();
    var androidAyari = AndroidInitializationSettings("@mipmap/ic_launcher");
    var kurulumAyari =
        InitializationSettings(iOS: iosAyari, android: androidAyari);
    await flp.initialize(kurulumAyari, onSelectNotification: bildirimSecilme);
  }

  Future<void> bildirimSecilme(String? payLoad) async {
    if (payLoad != null) {
      print("Bildirim seçildi: $payLoad");
    }
  }

  Future<void> bildirimGoster() async {
    var iosBildirimDetayi = IOSNotificationDetails();
    var bildirimDetay = NotificationDetails(iOS: iosBildirimDetayi);

    await flp.show(0, "StudentsWorld",
        "Süleyman Oğli Recep Sana Meşaj Yolladi da", bildirimDetay,
        payload: "payload icerik");
  }

  Future<void> bildirimGecikmeliGoster() async {
    var iosBildirimDetayi = IOSNotificationDetails();
    var bildirimDetay = NotificationDetails(iOS: iosBildirimDetayi);

    var gecikme = DateTime.now().add(Duration(seconds: 5));

    await flp.schedule(
        0, "Başlık Gecikme", "İcerik Gecikme", gecikme, bildirimDetay,
        payload: "Payload icerik gecikme");
  }

  @override
  void initState() {
    super.initState();
    kurulum();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            RaisedButton(
              child: Text("Bildirim oluştur"),
              onPressed: () {
                bildirimGoster();
              },
            ),
            RaisedButton(
              child: Text("Bildirim Oluştur(Gecikmeli)"),
              onPressed: () {
                bildirimGecikmeliGoster();
              },
            ),
          ],
        ));
  }
}
