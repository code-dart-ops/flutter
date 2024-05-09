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

  bool switchkontrol = false;

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
            Switch(
                value: switchkontrol ,
                activeTrackColor: Colors.amber,
                activeColor: Colors.indigo,
                inactiveTrackColor: Colors.grey,
                inactiveThumbColor: Colors.black87,
                onChanged: (veri){
                  setState(() {
                    switchkontrol = veri;

                  });
                  print("Switch : $veri");
            },
            ),
            ElevatedButton(
                onPressed: (){
                  print ("Switch Kontrol: $switchkontrol");
                },
                child: Text ("Göster"),),

          ]
        ),
      ),

    );
  }
}
