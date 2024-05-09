import 'dart:io';

import 'package:denemestdin/PersonelKaydiOrnek.dart';
import 'package:denemestdin/PersonelKaydiOrnek1.dart';

void main (){

  var personeller = <Personel>[];

for ( var i = 1; i<4; i++) { // döngü için kullanılır 3 kere farklı personel girdisi için bu kalıp kullanılır
  print("$i. Personelin adını giriniz");
  String isim = stdin.readLineSync()!;
  print ("$i. Personelin adres ilini giriniz");
  String il = stdin.readLineSync()!;

  print ("$i. Personelin adres ilçesini giriniz");
  String ilce = stdin.readLineSync()!;

  var adres= Adres(il, ilce);
  var personel = Personel(i, isim, adres);
  personeller.add(personel);


}
for (var p in personeller){

  print ("*******");
  print ("Personel no : ${p.no}");
  print ("Personel ad : ${p.isim}");
  print ("Personel adres il : ${p.adres.il}");
  print ("Personel adres ilçe : ${p.adres.ilce}");
}

}