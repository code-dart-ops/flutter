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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
      Padding(
        padding: EdgeInsets.only(top:ekranyuksekligi/100,),
        child: SizedBox(
            width: ekrangenisligi/2,
            height: ekranyuksekligi/5,
            child: Image.network("https://miro.medium.com/v2/resize:fit:4800/format:webp/1*yF9Hb5zeGWXRMRKjs_s62g.jpeg")),
      ),
      Text ("Pınar'ın Sayfası", style: TextStyle(fontSize: ekrangenisligi/10),),


          Center(


              child: Container(width: ekrangenisligi,height: ekranyuksekligi/4,color:Colors.indigo)),


        ],

      ),

    );
  }
}

