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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
bool aramayapiliyormu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: aramayapiliyormu ?
            TextField(
            decoration: InputDecoration(
              hintText: "Arama için bir şey yazınız"
            ),
              onChanged: (aramasonucu){
              print ("Arama Sonucu : $aramasonucu");
              },

            )
            : Text("Appbar Arama"),
        actions: [
          aramayapiliyormu ?
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: (){
              aramayapiliyormu = false;

            },
          )
          :
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              aramayapiliyormu = true;

            },
          ),

        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),

    );
  }
}
