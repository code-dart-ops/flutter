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


  @override
  Widget build(BuildContext context) {

    var ekranbilgisi = MediaQuery.of(context);
    final double ekrangenisligi = ekranbilgisi.size.width;
    final double ekranyuksekligi = ekranbilgisi.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Yemek Tarifi",
        style:
          TextStyle (fontWeight: FontWeight.bold),),
      ),
      body:Column(
        children: [
          Image.network("https://cdn.karar.com/news/1428027.jpg"),
          SizedBox(
            width: ekrangenisligi,
            height: ekranyuksekligi/15,
            child: Row(
              children: [

               Padding(
                 padding:  EdgeInsets.only(left: 80),
                 child: ElevatedButton(
                      child: Text ("Beğen",style: TextStyle (color: Colors.black),),
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.orange,
                   ),

                    onPressed: (){
                        print ("Beğenildi");
                        },
                 ),
               ),
                Spacer(),
                Padding(
                  padding:  EdgeInsets.only(right: 80),
                  child: ElevatedButton(

                    child: Text ("Yorum",style: TextStyle (color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),

                    onPressed: (){
                      print ("Yorum Yapıldı");
                    },

                  ),
                ),
              ],
            ),
          ),
          Text("Köfte Tarifi", style: TextStyle (
              fontSize: 20,
          color: Colors.red,
          fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Izgara üzerinde pişirmeye uygundur.." , style: TextStyle (fontSize: 17, color: Colors.deepOrangeAccent),),
              ),
              Spacer(),
              Text("8 Ağustos",style: TextStyle (fontWeight: FontWeight.bold),),
            ],
          ),

          Padding(
            padding:  EdgeInsets.all(30),
            child: Text(
                "Köfte harcını hazırlamak için, soğanları rendeleyin ve maydanozları ince ince kıyın. İsterseniz, bir diş sarımsak da ekleyebilirsiniz. soğan, maydanoz, kıyma, yumurta, zeytinyağı ve tuzu bir kaba alıp iyice yoğurun.Ardından harçtan ceviz büyüklüğünde parçalar koparıp yuvarlayın.1 cm olacak şekilde üzerine bastırarak yassılaştırın. ",style: TextStyle (fontSize: 16),),
          ),






        ],


      ),


    );
  }
}
