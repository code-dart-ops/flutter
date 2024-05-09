// ignore: unused_import
import 'package:collectionyapisi/Ogrenciler.dart';
import 'package:collectionyapisi/ogrenci.dart';

void main (){

  var o1 = Ogrenciler(93, "Pınar", "10/F");
  var o2 = Ogrenciler(100, "Ahmet", "12/A");
  var o3 = Ogrenciler(54, "Max", "11/A");


  var ogrenciler = <Ogrenciler> [];
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  Iterable <Ogrenciler> filtrelenenListe = ogrenciler.where((ogrenci) {

    return ogrenci.no <60;
  });

  ogrenciler = filtrelenenListe.toList();

  for (var o in ogrenciler){

    print ("*******");
    print ("Öğrenci No: ${o.no}");
    print ("Öğrenci Ad: ${o.ad}");
    print ("Öğrenci Sınıf: ${o.sinif}");

  }





}