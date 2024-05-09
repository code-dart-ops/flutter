void main (){

  var sayilar = <int>[];

  sayilar.add(34); // 0. indeks
  sayilar.add(67); // 1. indeks

  sayilar[3]= 89;

try{
  sayilar[3]= 89; print ("işlem tamam");} catch (e) {
  print ("Listenin boyutunu aştınız");
}

}
