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
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom: ekranyuksekligi/50),
                child: SizedBox(
                  height: ekranyuksekligi/5,
                  width: ekrangenisligi/3,
                  child: Image.network(
                      "https://seeklogo.com/images/T/turkiye-yuvarlak-logo-6483C54DD8-seeklogo.com.png"),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranyuksekligi/40),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),

                  ),

                ),
              ),

              Padding(
                padding:  EdgeInsets.all(ekranyuksekligi/40),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),

                  ),

                ),
              ),
              Padding(

                padding:  EdgeInsets.all(ekranyuksekligi/30),
                child: SizedBox(
                  width: ekrangenisligi/1.2,
                  height: ekranyuksekligi/12,
                  child: ElevatedButton(
                    child:  Text("Giriş Yap", style: TextStyle (fontSize: ekrangenisligi/20, color: Colors.pink),),

                    onPressed: () {
                      print("Giriş Yapıldı");
                    },



                  ),
                ),
              ),
              GestureDetector(
                  onTap: (){
                    print ("Yardım Seçildi");
                  },
                  child: Text("Yardım ?", style: TextStyle (color: Colors.pink, fontWeight: FontWeight.bold, fontSize: ekranyuksekligi/45),)),
            ],
          ),
        ),

      ),
    );
  }
}
