import 'package:back_stack_kullanimi/SONUCEKRAN%C4%B0.dart';
import 'package:flutter/material.dart';

class oyunekrani extends StatefulWidget  {
  const oyunekrani({super.key});

  @override
  State<oyunekrani> createState() => _oyunekraniState();
}

class _oyunekraniState extends State<oyunekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Oyun Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sonucekrani()));
                  // aradaki sayfayı yani bu sayfayı açmadan direkt ana sayfaya döner kendine geri döndürmez

                },
                child: Text("OYUN BİTTİ")

            ),
          ],
        ),
      ),

    );
  }
}
