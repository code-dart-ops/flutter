import 'dart:io';

void main (){

  while (true) {
    print("Sayı Giriniz");
    int sayi = int.parse(stdin.readLineSync()!);

    int sonuc = sayi % 2 ;
  if ( sonuc == 0 ) { print ("Sayı çift sayıdır"); }
  if (sonuc == 1 )
  { print (" Sayı Tek sayıdır");
  }
  print ("Çıkmak için (1) - Devam etmek için Diğer sayılar giriniz.");

  int cikis = int.parse(stdin.readLineSync()!);
  if (cikis == 1) {print (" Çıkış Yapıldı"); break;
  }
}

//while (true) --> sonsuz döngü
}