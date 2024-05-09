import 'dart:io';

void main (){

  print ("Kelime giriniz.");
  String kelime = stdin.readLineSync()!;

  // pınar , p=0.indeks ı = 1. n =2. a=3. r=4.indeksler

  //print (kelime[1]);

  String terskelime ="";
  for ( var i=kelime.length-1; i>-1; i--){
    terskelime = terskelime + kelime[i]; // yanyana yazmak için ters kelimeyi. Boşlukla birleştir

  }
  print (terskelime);
}