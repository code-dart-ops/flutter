void main (){

  var meyveler = <String>[];

  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Elma");
  meyveler.add("Kivi");
  meyveler.add("Kiraz");

  print (meyveler.isNotEmpty); // boş değil mi? ya da isempty --> boş mu kontrolü
  print (meyveler.length); // kaç tane var
  print (meyveler.first); // ilk eleman
  print(meyveler.last); // son eleman

  print (meyveler.contains("Kiraz")); // içeriyor mu

  var liste = meyveler.reversed; // Listeyi ters çevirme
  print(liste);

  meyveler.sort(); // Kronolojik sıralama "Ç" türkçe olduğu için en sona attı
  print(meyveler);

  meyveler.removeAt(2); // 2. meyveyi sildi.
  print(meyveler);

  meyveler.remove("Kiraz"); // Kirazı sildi
  print (meyveler);

  meyveler.clear();
  print (meyveler);  // Bütün listeyi siler

}