import 'dart:io';

void main () {

  print ("isim giriniz");
  String isim= stdin.readLineSync()!;

  print ("Tekrar Sayısını Giriniz.");
   int tekrar = int.parse(stdin.readLineSync()!);

   // 5--> 0,1,2,3,4,,5
   for ( var i = 1; i<tekrar; i++) {print ("${i}. : $isim"); }








}