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

bool kotlindurum = false;
bool dartdurum = false;

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
          children: <Widget>[

            CheckboxListTile(
              title: Text("Kotlin"),
              value: kotlindurum,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? veri){

                print ("Kotlin seçildi: $veri");

                setState(() {
                  var kotlindurum = veri;

                });
              },



            ),
            CheckboxListTile(
              title: Text("dart"),
              value: dartdurum,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? veri){

                print ("dart seçildi: $veri");

                setState(() {
                  var dartdurum = veri;

                });
              },



            ),

          ],
        ),
      ),

    );
  }
}
