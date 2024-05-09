import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/Sayfa%20A.dart';
import 'package:sayfa_gecis_uygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Geldiği Sayfaya Dön")),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text("Anasayfaya Dön")), // anasayfanın sol yanında geri tuşu olmaz. ilk defa yeni bir sayfa yani Anasayfa açılmış gibi olur..

            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Anasayfa()));
                },
                child: Text("Anasayfaya Geçiş Yap")),// Anasayfayı sayfaların üstüne açmış oluyoruz yani anasayfanın sol yanında geri tuşu belirmiş oluyor bu kodlamayla

          ],

        ),
      ),

    );
  }
}

