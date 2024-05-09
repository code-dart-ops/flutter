import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            MaviKare(),
            SizedBox(height: 20,),
            KirmiziKare(),
            SizedBox(height: 20),
            yazi("Pınar'ın Sayfası", 30.0),
          ],
        ),
      ),

    );
  }
}

class MaviKare extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(width: 50,height: 50,color: Colors.indigo,);
  }

}

class KirmiziKare extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(width: 50,height: 50,color: Colors.amber,);
  }

}
// st : kısa yol .. taslağı hemen çıkarır

class yazi extends StatelessWidget {
 late String icerik;
 late double yaziboyutu;


 yazi(this.icerik, this.yaziboyutu);

  @override
  Widget build(BuildContext context) {
    return Text(icerik, style: TextStyle(fontSize: yaziboyutu),);
  }
}
