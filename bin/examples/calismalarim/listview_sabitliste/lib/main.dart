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
        title: Text("Sabit Liste Tasarımı"),
      ),
      body: ListView(
        children: [

          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text ("Güneş"),
            subtitle: Text("Güneş Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print ("Güneş Tıklandı");
              },
          ),
          ListTile(
            leading: Icon(Icons.brightness_2),
            title: Text ("Ay"),
            subtitle: Text("Ay Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print ("Ay Tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text ("Yıldız"),
            subtitle: Text("Yıldız Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print ("Yıldız Tıklandı");
            },
          ),
          GestureDetector(

            onTap: (){

              print("Card Tıklandı"); // ontap özelliğini gesture ile veriyoruz Cardta..
            },

            child: Card(
              color: Colors.amberAccent,
              child: SizedBox(

                height: 50,
                child: Row(

                  children: [

                    Text ("Card Tasarım"),

                    Spacer(),
                    Icon(Icons.more_vert),


                  ],

                ),
              ),
            ),
          ),
          GestureDetector(

            onTap: (){
              print ("MERHABA Tıklandı");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                height: 50,
                color: Colors.indigoAccent,
                child: Center(child: Text("MERHABA", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),



                ),
            ),

              ),

        ],
      ),
    );
  }
}
//     decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),