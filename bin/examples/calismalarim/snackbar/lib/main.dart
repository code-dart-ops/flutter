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
      home: const MyHomePage(title: 'SnackBar Çalışması'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: Text ("Varsayılan"),
              onPressed: (){

                ScaffoldMessenger.of(context).showSnackBar(

                  SnackBar(content: Text("Merhaba"),),
                );
              },

            ),
            ElevatedButton(
              child: Text ("Snackbar Action"),
              onPressed: (){

                ScaffoldMessenger.of(context).showSnackBar(

                  SnackBar(
                    content: Text("Silmek istiyor musunuz ?"),
                    action: SnackBarAction(
                      label: "Evet",
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(

                          SnackBar(content: Text("Silindi"),),
                        );
                      },
                    ),
                  ),
                );

              },

            ),
            ElevatedButton(
              child: Text ("Snackbar Özel"),
              onPressed: (){

                ScaffoldMessenger.of(context).showSnackBar(

                  SnackBar(
                    content: Text("İnternet Bağlantısı Yok !", style: TextStyle (color:Colors.indigoAccent),),
                    backgroundColor: Colors.white,
                    duration: Duration(seconds: 5), // ekranda kalma süresi
                    action: SnackBarAction(
                      label: "TEKRAR DENE",
                      textColor: Colors.red,
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(

                          SnackBar(content: Text("Tekrar Denendi"),),
                        );
                      },
                    ),
                  ),
                );

              },

            ),

          ],
        ),
      ),

    );
  }
}
