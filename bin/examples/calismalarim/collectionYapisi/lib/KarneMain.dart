// stdin.readlinesync çalışmıyor.
void main (){

  var dersnotlarilistesi = <Dersnotlari>[];


  while (true){

    print ("Dersin Adını Giriniz.");
    String ders = stdin.rea

    print ("Ders notunu giriniz");
    int not = int.parse


    print ("Çıkmak için (1) - Devam etmek için diğer sayılar");
    
    int cikis = int.parse(stdin.readLineSync());

    if (cikis == 1) { print ("Çıkış yapıldı.");
      break;}

    
    
  }




}