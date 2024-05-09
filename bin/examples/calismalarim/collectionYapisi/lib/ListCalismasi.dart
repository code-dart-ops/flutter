void main (){



var plakalar = [16,34,72];

var meyveler = <String>[];

meyveler.add("Çilek"); //0 -->indeks sıralama
meyveler.add("Muz"); //1
meyveler.add("Elma");// 2
meyveler.add("Kivi");//3
meyveler.add("Kiraz");//4
print (meyveler);

meyveler.add("Mandalina"); //5
print(meyveler);

meyveler[2] = "Ananas"; // güncelleme- Elma yerine Ananas
print (meyveler);

meyveler.insert(3, "Portakal"); // üçüncü sıraya yerleştir. insert= araya sokmak demek
print (meyveler);


print (meyveler[0]);

}