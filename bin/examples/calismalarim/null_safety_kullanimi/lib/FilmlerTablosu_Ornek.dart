import 'package:null_safety_kullanimi/Kategoriler_Ornek.dart';
import 'package:null_safety_kullanimi/Yonetmenler_Ornek.dart';

class Filmler {

  late int film_id;
  late String film_ad;
  late int film_yil;

 late Kategori kategori;
 late Yonetmen yonetmen;

  Filmler(
      this.film_id, this.film_ad, this.film_yil, this.kategori, this.yonetmen);
}