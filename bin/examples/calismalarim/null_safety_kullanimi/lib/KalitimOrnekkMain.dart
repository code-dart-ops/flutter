import 'package:null_safety_kullanimi/SarayKalitimOrnek.dart';
import 'package:null_safety_kullanimi/VillaKalitimOrnek.dart';

void main (){

  var villa = Villa("var", 5);
  var saray = Saray(3, 5);

  print("Garaj var mı? : ${villa.garajVarmi}");
  print ("Pencere Sayısı :${saray.pencereSayisi}");
  print ("Kulesi var mı? : ${saray.kuleSayisi}");





}