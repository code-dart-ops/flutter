import 'dart:io';

void main (){

  print ("Günü giriniz");
  int gun = int. parse(stdin.readLineSync()!);

  switch (gun) {
    case 1 :
      {
        print("pazartesi");
      }
      break;
    case 2 :
      {
        print("Salı");
      } break;

    case 3 :
      { print ("Çarşamba"); }
      break;
    case 4 :
      {
        print("Perşembe");
      } break;
    case 5 :
      {
        print("cuma");
      } break;

    default : { print (" Böyle bir gün yoktur.");} break;







  }





}