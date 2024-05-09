import 'package:null_safety_kullanimi/Araba.dart';
import 'package:null_safety_kullanimi/Arac.dart';
import 'package:null_safety_kullanimi/Nissan.dart';

void main (){

  var araba = Araba("sedan", "Kırmızı", "Otomatik");

  print (araba.kasatipi);
  print (araba.vites);
  print (araba.renk);

  var model = Nissan("Micra", "hackback", "Siyah", "Otomatik");

print (model.model);
print (model.kasatipi);
print (model.renk);
print (model.vites);

var arac = Arac("Siyah", "Manuel"); // Arac sadece kendi özellikleri var, miras veren Arac.
  print ("Vites : ${arac.vites}");
  print (" Renk : ${arac.renk}");


}