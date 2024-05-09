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
 var tfController = TextEditingController();
 String alinanveri = "";
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfController,
                obscureText: true, // şifreleme gibi yazıyor
                textAlign: TextAlign.center,
                maxLength: 4, // karakter sayısı 4 ü geçemez
                style: TextStyle (
                  color:Colors.purple,
                 // backgroundColor: Colors.amber,// textfield yazı rengi
                ),

                // sayılı klavye çıkıyor -->keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: "Yazınız",
                  hintStyle: TextStyle (
                    color: Colors.red,
                    fontSize: 20,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                  filled: true,
                  fillColor: Colors.green,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  prefixIcon: Icon(Icons.ac_unit),
                ),


              ),
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    alinanveri = tfController.text;
                  });

                }, child:
              Text (
                "VeriyiAl", style: TextStyle (color: Colors.indigo, fontWeight: FontWeight.bold),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                shadowColor: Colors.black,
                elevation: 10,
                side: BorderSide(color: Colors.black),
              ),

            ),



            ElevatedButton(
              onPressed: (){

                setState(() {
                  alinanveri = tfController.text;
                });

              }, child:
            Text (
                "VeriyiAl" , style: TextStyle(color: Colors.deepOrange,
                 fontWeight: FontWeight.bold), ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shadowColor: Colors.black,
                elevation: 10,
                foregroundColor: Colors.red,
                side: BorderSide(color: Colors.black, ),

                // çerçeve

              ),


            ),

            Text("Gelen Veri: $alinanveri"),

          ],
        ),
      ),

    );
  }
}
