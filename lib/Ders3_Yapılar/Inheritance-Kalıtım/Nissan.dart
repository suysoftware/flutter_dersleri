import 'package:flutter_dersleri/Ders3_Yap%C4%B1lar/Inheritance-Kal%C4%B1t%C4%B1m/Araba.dart';

class Nissan extends Araba{
  String model;

  Nissan(this.model,String kasaTipi,String renk,String vites):super(kasaTipi,renk,vites);
}
