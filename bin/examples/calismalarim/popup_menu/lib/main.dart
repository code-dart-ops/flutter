
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Uygulamanın ana sınıfı
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Tema renk şemasını tanımla, burada Amber rengini kullan
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      // Ana sayfayı oluşturan widget'ı belirt
      home: const MyHomePage(title: 'Popup Menü Çalışması'),
    );
  }
}

// Ana sayfa için Stateful widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Ana sayfa için State sınıfı
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Uygulama çubuğunun arka plan rengini temadan al
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Popup menüyü oluşturan buton
            PopupMenuButton(
              child: Icon(Icons.ac_unit_outlined),
              // Popup menü öğelerini oluştur
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Sil", style: TextStyle(color: Colors.indigo)),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Güncelle", style: TextStyle(color: Colors.indigo)),
                ),
              ],
              // Popup menüden çıkıldığında çağrılır
              onCanceled: () {
                print("Seçim Yapılmadı");
              },
              // Popup menüden bir öğe seçildiğinde çağrılır
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print("Sil Seçildi");
                }
                if (menuItemValue == 2) {
                  print("Güncelle Seçildi");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
