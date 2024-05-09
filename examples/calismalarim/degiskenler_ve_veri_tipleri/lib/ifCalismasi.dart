void main () {
  var yas = 18;
  String isim = "Pınar";

// örnek 1

  if (yas >= 18) {
    print("resitsiniz");
  }
  if (yas >= 19) {
    print("resitsiniz");
  } else {
    print("resit degilsiniz");
  }
// örnek 2
  if (isim == "Pınar") {
    print("Merhaba Pınar");
  } else {
    print("Tanınmayan Kişi");
  }
// örnek 3
  if (isim == "Ahmet") {
    print("merhaba Ahmet");
  } else if (isim == "Mehmet") {
    print("merhaba Mehmet");
  } else {
    print("tanınmayan kişi");
  }


// örnek 4 and

  var kullaniciAdi = "admin";
  var sifre = 12345;

  if (kullaniciAdi == "admin" && sifre == 12345) {
    print("hosgeldiniz");
  }
  else {
    print("hatalı Giriş");
  }

// örnek 5 or

  var username = "@pinaroguz";
  var password = 121212;

  if (username == "@pinaroguz" || password == 12345)  print ("giriş başarı ile gerçekleştirildi");  else
    print("hata");


  // örnek 6

  var x = 12;
  var y = 18;

  if ( x == y) print ("true"); else print ("false");


  
}










