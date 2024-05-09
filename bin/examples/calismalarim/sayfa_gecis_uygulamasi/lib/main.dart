import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/Sayfa%20A.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home:  Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

Future<bool>  (BuildContext context) async {
  print("Geri dönüş tuşu tıklandı");
  Navigator.of(context).popUntil((route) => route.isFirst);

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
              onPressed: (){
               Navigator.pop(context);
              },
              child: Text("Sayfa A'ya git"))

          ],

        ),
      ),

    );
  }
}
