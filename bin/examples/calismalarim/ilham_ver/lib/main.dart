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

    var ekranbilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;

      return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("İlham Ver"),
      ),
      body: Column(
        children: [
          SizedBox(
              width: ekrangenisligi/3,
              height: ekranyuksekligi/4,
              child: Image.network("https://www.manzara.gen.tr/w1/%C3%87imen-g%C3%B6zl%C3%BC-kedi-300x225.jpg")),
          Text(
            "İlham Ver",
            style: TextStyle (
                fontSize: ekrangenisligi/18,
            color: Colors.indigoAccent,
            fontWeight: FontWeight.bold,
            ),

          ),
          const Spacer(),
          Text ("Miyavlamak, lazer görünce çıldırmak, 'pisi'de gelmek 'pist'te kaçmak..",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: ekrangenisligi/25),),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: ekranyuksekligi/100),
            child: SizedBox(
              width: ekrangenisligi/2,
              height: ekranyuksekligi/15,
              child: ElevatedButton (
              child:const Text ("İlham Ver"),


              onPressed: () {
                print ("İlham Verildi");
                },
style: ElevatedButton.styleFrom(
  backgroundColor: Colors.red,


),







              ),
            ),
          ),
        ]
      ),

    );
  }
}
