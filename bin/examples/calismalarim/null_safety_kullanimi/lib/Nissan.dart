import 'package:null_safety_kullanimi/Araba.dart';

class Nissan extends Araba{

  late String model;

  Nissan(this.model, String kasatipi,String renk, String vites) : super( kasatipi, renk , vites);
}

