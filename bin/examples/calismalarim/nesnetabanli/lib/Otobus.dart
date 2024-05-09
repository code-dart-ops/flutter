class Otobus {

  late int kapasite;
  late String nereden;
  late String nereye;
  late int mevcutYolcu;

void bilgial () {

  print ("Kapasite : $kapasite");
  print ("Nereden : $nereden");
  print ("Nereye : $nereye");
  print ("Mevcut Yolcu : $mevcutYolcu");

}
void yolcuAl (int yolcusayisi){

  mevcutYolcu = mevcutYolcu + yolcusayisi;

}

void yolcuindir (int yolcusayisi){

  mevcutYolcu = mevcutYolcu - yolcusayisi;

}



}