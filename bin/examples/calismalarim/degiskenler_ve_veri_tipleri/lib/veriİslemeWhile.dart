import 'dart:io';

void main (){

  print ("İşlenecek Veri Miktarı Giriniz");

  int veri = int.parse(stdin.readLineSync()!);

  while (veri >0) { print ("$veri. veri ");
    veri -=1;} // veri = veri - 1





}