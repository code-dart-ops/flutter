import 'dart:io';
void main (){

  var isimler = <String>[];

  isimler.add("Pınar");
  isimler.add("Ahmet");
  isimler.add("Bahar");
  isimler.add("Max");
  isimler.add("Mona");

  print ("Aratmak için isim giriniz.");
  var isim = stdin.readLineSync()!;



 for (var s in isimler) {
   if (isim == s) {
     print("Mevcut İsim");
   }
   }
}