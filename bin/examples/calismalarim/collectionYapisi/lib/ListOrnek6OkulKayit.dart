import 'dart:io';
import 'package:collections_yapisi/Ogrenciler.dart';

void main (){

  int sayac = 1; // öğrenci noyu belirleyecek
  var ogrenciler = <Ogrenciler>[];

  while (true) {
    print ("Öğrenci adını giriniz");
    String ad = stdin.readLineSync()!;

    print ("Öğrenci sınıfı giriniz");
    String sinif = stdin.readLineSync()!;

    var yeniogrenci = Ogrenciler(sayac, ad, sinif)
    sayac = sayac + 1;

    ogrenciler.add(yeniogrenci);

    print("Çıkmak için (1) - Devam etmek için diğer sayılar");

    int cikis = int.parse(stdin.readLineSync()!);

    if (cikis == 1) {

      for (var ogrenci in Ogrenciler) {

        print ("*********");
        print ("Öğrenci No : ${ogrenci.no}")
        print ("Öğrenci Adı : ${ogrenci.ad}")
        print ("Öğrenci Sınıfı : ${ogrenci.sinif}")
      }

      print("Çıkış yapıldı");
      break;
    }


  }

  }



