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

  var tarih = TextEditingController();
  var saat = TextEditingController();

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
            TextField(
              controller: saat,
              decoration: InputDecoration(
                hintText: "Saat Giriniz",
              ),
              onTap: (){
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                ).then((alinansaat){
                  setState(() {
                    saat.text ="${alinansaat!.hour}: ${alinansaat.minute}";
                  });

                } );

              },


            ),

            TextField(
              controller: tarih,
              decoration: InputDecoration(
                hintText: "Tarih Giriniz",
              ),
              onTap: (){
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                ).then((alinantarih){
                  setState(() {
                    tarih.text ="${alinantarih!.day}/ ${alinantarih.month}/${alinantarih.year}";
                  });

                } );

              },


            ),

          ],
        ),
      ),

    );
  }
}
