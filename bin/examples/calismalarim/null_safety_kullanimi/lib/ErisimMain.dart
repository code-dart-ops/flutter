import 'package:null_safety_kullanimi/Erisim.dart';

void main (){

  var e = Erisim();

  e.publicDegisken= 10;
 // e.privateDegisken = 2; olmaz "_private" özelliği sadece class süslü parantezinde tanımlıdır."public" genel değişkendir main dosyasında görülür.

print (e.degisken); 



}