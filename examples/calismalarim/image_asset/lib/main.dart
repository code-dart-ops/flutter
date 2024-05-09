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


String resim = "https://www.sutistaksim.com.tr/Upload/Urun/Buyuk/622021-Resim-4-142334.jpg";
String resim1 = "https://cdn.yemek.com/mnresize/4032/3024/uploads/2022/05/20220516053414894612.jpeg";
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

        Image.network ("https://www.sutistaksim.com.tr/Upload/Urun/Buyuk/622021-Resim-4-142334.jpg"),
           


            ElevatedButton(
              child: Text("Resim 1"),
              onPressed: (){

                setState(() {
                  resim = "https://www.sutistaksim.com.tr/Upload/Urun/Buyuk/622021-Resim-4-142334.jpg";

                });

                
                print ("$resim");

              },
            ),
        ElevatedButton(
          child: Text("Resim 2"),
          onPressed: (){


            setState(() {

              resim1 = "https://cdn.yemek.com/mnresize/4032/3024/uploads/2022/05/20220516053414894612.jpeg";



              print ("$resim1");
            });


          },
        ),
          ],
        ),
      ),

    );
  }
}
