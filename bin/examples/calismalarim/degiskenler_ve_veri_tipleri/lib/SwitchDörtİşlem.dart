import 'dart:io';

void main (){

  print ("Toplama (1)");
  print ("Çıkarma (2)");
  print ("Çarpma (3)");
  print ("Bölme (4)");

  int tercih =int.parse(stdin.readLineSync()!);

  print ("Tercihiniz : $tercih");

print ("Birinci sayıyı giriniz");
int sayi1 = int.parse(stdin.readLineSync()!);

print ("İkinci Sayıyı giriniz");
int sayi2 = int.parse(stdin.readLineSync()!);

switch (tercih) {
  case 1 : {print ("toplama : ${sayi1 + sayi2}"); }
    break;

  case 2 : {print ("Çıkarma : ${sayi1 - sayi2}"); }
    break;
  case 3 : {print ("Çarpma : ${sayi1 * sayi2}"); }
    break;
  case 4 : {print ("Bölme : ${sayi1 / sayi2}"); }
    break;
  default:
    {print ("Böyle bir işlem yoktur."); }
    break;
}




}