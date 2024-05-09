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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
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
        title: Text("Gridview Çalışması"),
      ),
      body: GridView.count(
        crossAxisCount: 3, // bir satırda Kaç tane card olacak ?
        childAspectRatio: 2 / 1, // herbir itemin oranlaması = genişliği:2 Yüksekliği:1
        children: [
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // dikayde ortalamak için
              children: [
                Icon(Icons.wb_sunny),
                Text("Güneş"),
              ],
            ),
            color: Colors.amberAccent,
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // dikayde ortalamak için
              children: [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),
            color: Colors.white,
          ),
          GestureDetector(
            onTap: (){
              print ("Yıldız Tıklandı");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // dikayde ortalamak için
                children: [
                  Icon(Icons.star),
                  Text("Yıldız"),

                ],
              ),
              color: Colors.blueAccent,
            ),
          ),
        ],


      ),

    );
  }
}
