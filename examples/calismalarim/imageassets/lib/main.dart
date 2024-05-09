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

String resimadi = "inegol.jpeg";
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
          children: [
            FadeInImage.assetNetwork(
                placeholder: "resimler/loading.png", // resim açılmadan önce bekleme resmi
             image: "resimler/iskender.jpeg",
            ),

            ElevatedButton(
              child: Text ("Resim 1"),
              onPressed: (){
                setState(() {
                  resimadi= "inegol.jpeg";
                  print ("$resimadi");
                });

              },

            ),
            ElevatedButton(
              child: Text ("Resim 2"),
              onPressed: (){
                setState(() {
                  resimadi= "iskender.jpeg";
                  print ("$resimadi");
                });

              },

            ),

          ],

        ),
      ),

    );
  }
}
