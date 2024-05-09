import 'package:flutter/material.dart';
import 'package:uygulama_yapisi/sayfa1.dart';

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
      home:  MyHomePage(title: "Sayaç"),


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

int sayac = 0;
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

            ElevatedButton(
            child: Text ("Tıkla") ,

            onPressed:(){
              setState(() {
                sayac=sayac+1;
              },

              );

            } ,

                ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Sonuç: $sayac"),
         ),

          ],

        ),
      ),

    );
  }

    }
