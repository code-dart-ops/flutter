import 'dart:io';

void main () {

  print("Dikdörtgen Alanı (1)");
  print("Çember Alanı (2)");

  int secim = int.parse(stdin.readLineSync()!);
  print ("seçiminiz : $secim");

  if (secim == 1)
    print("kısa Kenar giriniz");
    var kisakenar = int.parse(stdin.readLineSync()!);

    print("uzun kenar giriniz");
    var uzunkenar = int.parse(stdin.readLineSync()!);

    print("dikdörtgen Alanı");
    var dikdortgenalani = kisakenar * uzunkenar;
    print("sonuç : $dikdortgenalani");

print ("dikdörtgen Alanı (1)");
print ("Çember Alanı (2)");

int secim2 = int.parse(stdin.readLineSync()!);
if ( secim == 2);

print ("yarı çap giriniz");
int secimyaricap = int.parse(stdin.readLineSync()!);

print ("Çember Alanı");
var sonucalan = secimyaricap * 3.14 * secimyaricap;
print ("Sonuç : $sonucalan ");

print ("TEBRİKLER 100 TAM PUAN ALDINIZ:)");

}

