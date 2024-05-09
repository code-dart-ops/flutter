Future<void> main () async{

print ("verilerin alınması bekleniyor..");
var veri = await veritabanial();
print("veri alınıyor");
print ("alınan veri : $veri");
}

Future<String> veritabanial () async{
  for (var i = 1 ; i<=5; i++) {
  Future.delayed(Duration(seconds: i) , () => print("Alınan veri miktarı : ${i*20}"));


}
 
return Future.delayed(Duration(seconds: 5) , () =>  "veri tabanı ");


}