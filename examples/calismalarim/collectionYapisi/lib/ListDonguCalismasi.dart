void main (){

  var meyveler = <String>[];

  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Elma");
  meyveler.add("Kivi");
  meyveler.add("Kiraz");


  for (var m in meyveler) {  // dikey Sıralama "in"

    print ("Sonuç : $m"); }

  for (var i = 0; i<meyveler.length; i++){
    print ("$i. indeksteki veri : ${meyveler[i]}"); // hem içerik hem indeks numaralı sıralama için..

  }


}