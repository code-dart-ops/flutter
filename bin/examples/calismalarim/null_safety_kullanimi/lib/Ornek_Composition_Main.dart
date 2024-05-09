



import 'package:null_safety_kullanimi/FilmlerTablosu_Ornek.dart';
import 'package:null_safety_kullanimi/Kategoriler_Ornek.dart';
import 'package:null_safety_kullanimi/Yonetmenler_Ornek.dart';

void main (){

var k1 = Kategori(1, "Dram");
var k2 = Kategori(2, "Komedi");

var y1 = Yonetmen(1, "Nuri Bilge Ceylan");
var y2 = Yonetmen(2, "Tarantino");

var f1 = Filmler(1, "Django", 2013, k1, y2);

print ( "Film id : ${ f1.film_id}");
print ("Film Ad : ${f1.film_ad}");
print ("Film Yıl : ${f1.film_yil}");
print ( "Kategori id : ${k1.kategori_id}");
print (" Yönetmen Ad : ${y2.yonetmen_ad}");







}