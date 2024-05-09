import 'package:collectionyapisi/Ogrenciler.dart';

void main () {
  var o1 = Ogrenciler(93, "Pınar", "10/F");
  var o2 = Ogrenciler(100, "Ahmet", "12/A");
  var o3 = Ogrenciler(54, "Max", "11/A");


  var ogrenciler = <Ogrenciler>[];
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  print("İlk Hali");

  for (var o in ogrenciler) {
    print("*******");
    print("Öğrenci No: ${o.no}");
    print("Öğrenci Ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }

  Comparator<Ogrenciler> siralama1 = (x, y) => x.no.compareTo(y.no);
  ogrenciler.sort(siralama1);


  print("Sıralama Küçükten Büyüğe:");
  for (var o in ogrenciler) {
    print("*******");
    print("Öğrenci No: ${o.no}");
    print("Öğrenci Ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }

  Comparator<Ogrenciler> siralama2 = (y, x) => x.no.compareTo(y.no);
  ogrenciler.sort(siralama2);
  print("Sıralama Büyükten Küçüğe:");
  for (var o in ogrenciler) {
    print("*******");
    print("Öğrenci No: ${o.no}");
    print("Öğrenci Ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }

  Comparator<Ogrenciler> siralama3 = (x, y) => x.ad.compareTo(y.ad);
  ogrenciler.sort(siralama3);
  print("Metinsel sıralama");
  for (var o in ogrenciler) {
    print("*******");
    print("Öğrenci No: ${o.no}");
    print("Öğrenci Ad: ${o.ad}");
    print("Öğrenci Sınıf: ${o.sinif}");
  }
}
