import 'package:null_safety_kullanimi/Adres.dart';
import 'package:null_safety_kullanimi/Musteriler.dart';

void main (){

  var adres = Adres("Bursa", "inegol");


  var musteri = Musteriler(33, "Pınar", adres);

  print ("Müşteri Adı : ${musteri.ad}");
  print ( "Müşteri Yaşı : ${musteri.yas}");
  print ("Müşteri İl : ${musteri.adres.il}");
  print ("Müşteri İlçe : ${musteri.adres.ilce}");




}