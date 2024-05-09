import 'package:nesnetabanli/Otobus.dart';

void main (){

  var kamilkoc = Otobus();

  //Değer Atama
  kamilkoc.kapasite = 50;
  kamilkoc.nereden = "Bursa";
  kamilkoc.nereye = "Ankara";
  kamilkoc.mevcutYolcu = 10;

  //Değer Okuma

  print (kamilkoc.kapasite);
  print (kamilkoc.nereden);
  print (kamilkoc.nereye);
  print (kamilkoc.mevcutYolcu);

  kamilkoc.bilgial();

  kamilkoc.yolcuAl(20);
  kamilkoc.bilgial();

  kamilkoc.yolcuindir(12);
  kamilkoc.bilgial();

  var Metro = Otobus();

  Metro.kapasite = 10;
  Metro.nereden = "Bursa";
  Metro.nereye = "İzmir";
  Metro.mevcutYolcu = 1;

  Metro.bilgial();
  Metro.yolcuAl(10);
  Metro.bilgial();

  Metro.yolcuindir(5);
  Metro.bilgial();
}