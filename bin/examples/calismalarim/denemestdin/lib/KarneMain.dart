import 'dart:collection';
import 'dart:io';

import 'package:denemestdin/ListeKarneOrnek.dart';

void main () {
  var dersnotlari = <Dersnotlari>[];

  while (true) {
    print("Ders giriniz.");
    String ders = stdin.readLineSync()!;

    print("Not giriniz.");
    int not = int.parse(stdin.readLineSync()!);

    print("Çıkış yapmak için (1) - Devam etmek için diğer sayı");
    int cikis = int.parse(stdin.readLineSync()!);

    var yeninot = Dersnotlari(ders, not);
    dersnotlari.add(yeninot);
    if (cikis == 1) {
      print("*******");


      int toplam = 0;
      for (var dn in dersnotlari) {
        print("${dn.ders} : ${dn.not}");

        toplam = toplam + dn.not;

        var ortalama = toplam / dersnotlari.length;

        print ("********");
        print ("Ortalama Ders Notu : $ortalama");

        if(ortalama <= 50) { print ("KALDINIZ");} else { print ("GEÇTİNİZ");}

        print("Çıkış yapıldı.");
        break;
      }
    }
  }
}