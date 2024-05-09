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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("APPBAR",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
            Text("ALT APPBAR",style: TextStyle(color: Colors.white,fontSize: 15),),
          ],

        ),
        centerTitle: false,
        leading:  IconButton(
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
          onPressed: (){
            print ("Menu Icon Tıklandı");
          },
        ),
        actions: [
          TextButton(
            child: Text("ÇIKIŞ", style: TextStyle(color: Colors.white,fontSize: 15),),
            onPressed: (){

              print ("ÇIKIŞ Yapıldı");
            },

          ),
          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline),
            onPressed: (){
              print ("Bilgi Tıklandı");
            },
          ),
         PopupMenuButton(
           child: Icon(Icons.more_vert),
           itemBuilder: (context) => [
             PopupMenuItem(
               value: 1,
               child: Text ("Sil"),
             ),
             PopupMenuItem(
               value: 2,
               child: Text("Güncelle"),

             ),

           ],
           onSelected: (menuItemValue){
             if (menuItemValue == 1){
               print ("Sil Tıklandı");
             }
             if (menuItemValue == 2){
               print ("Güncelle Tıklandı");
             }
           },
         ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),

    );
  }
}
