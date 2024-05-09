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
      home: const MyHomePage(title: 'DropDown'),
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

  var ulkeler =<String>[];
  String ulke = "Türkiye";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ulkeler.add("Türkiye");
    ulkeler.add("Japonya");
    ulkeler.add("Güney Kore");
    ulkeler.add("İspanya");
    ulkeler.add("Meksika");
    ulkeler.add("Kuzey Kore");
    ulkeler.add("İtalya");
    ulkeler.add("Tayland");

  }


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

            DropdownButton <String>(
              value: ulke,
              items: ulkeler.map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text("Ülke : $value", style: TextStyle(color: Colors.black87, fontSize: 20),),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? secilenveri){
                setState(() {
                 ulke = secilenveri!;
                });


              },

            ),
            Text("Seçilen Ülke : $ulke"),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: (){
                print ("En Son Seçilen Ülke : $ulke");
              },
            ),

          ],
        ),
      ),

    );
  }
}
