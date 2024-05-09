import 'package:flutter/material.dart';
import 'package:yemeksepetiuyg/Detay.dart';
import 'package:yemeksepetiuyg/yemekler.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yemek Sepeti'),
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
  Future<List<yemekler>> yemeklerigetir() async {
    var yemeklistesi = <yemekler>[];

    var y1 = yemekler(1, "Köfte", "köfte.png", 129.99);
    var y2 = yemekler(2, "Kola", "kola.png", 39.0);
    var y3 = yemekler(3, "Baklava", "baklava.png", 69.50);
    var y4 = yemekler(4, "Makarna", "makarna.png", 99.0);
    var y5 = yemekler(5, "Ayran", "ayran.png", 29.0);

    yemeklistesi.add(y1);
    yemeklistesi.add(y2);
    yemeklistesi.add(y3);
    yemeklistesi.add(y4);
    yemeklistesi.add(y5);

    return yemeklistesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<yemekler>>(
        future: yemeklerigetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var yemeklistesi = snapshot.data;

            return ListView.builder(
              itemCount: yemeklistesi!.length,
              itemBuilder: (context, indeks) {
                var yemek = yemeklistesi[indeks];

                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => detay(yemek: yemek,)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset("resimler/${yemek.yemekresim}")),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              yemek.yemekadi,
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "${yemek.yemekfiyat} \u{20BA}",
                              style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}