import 'package:null_safety_kullanimi/%C4%B0sci.dart';
import 'package:null_safety_kullanimi/Mudur.dart';
import 'package:null_safety_kullanimi/Ogretmen.dart';
import 'package:null_safety_kullanimi/personel.dart';

void main (){

 Personel isci = Isci();
 Personel ogretmen = Ogretmen();


  var mudur =Mudur();
  mudur.iseAl(ogretmen);
  mudur.iseAl(isci);
  


}