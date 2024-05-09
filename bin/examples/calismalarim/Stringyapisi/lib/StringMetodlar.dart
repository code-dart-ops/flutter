void main (){


  String str1 = "Merhaba"; // M= 0.indeks E=1.indeks R=2.İndeks.....
  print (str1.substring(0,3)); //MER olarak çıktı alır 3. indekse kadar

  String str2 = "Merhaba";

  if (str2.contains("abax")){
    print ("içeriyor");
  } else {
    print("içermiyor");
  }

String str3 = "Merhaba";
  print (str3.toUpperCase()); // hepsini büyük harf yapar
  print (str3.toLowerCase()); // hepsini küçük harf yapar

  String str4 = "Merhaba Nasılsın iyimisin";

  var liste = str4.split(" "); // boşluk olan yeri parçalar
  for (var s in liste){print (s); }

  String str5 = ("Merhaba, Dart!");
  print (str5.length);

  String str6 = "";
  print (str6.isEmpty);
}