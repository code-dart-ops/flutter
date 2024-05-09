void main (){

  var sayilar = <int> [];

 var z = Random(); // çalışmıyor, rastgele sayı seçmek için kullanılır Random

  for (var i =0; i<100; i++) // i = indeks yani kaçıncı sayı olduğuna atıf {

    int rastgelesayi = r.nextInt (51); // 0- 50

    sayilar.add(rastgelesayi);
  }

  sayilar.sort(); // Küçükten Büyüğe sıralar

  for (var s in sayilar) // <--Listeleme Dikey sıralama {

    print (s);
  }




}