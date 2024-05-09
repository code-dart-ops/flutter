
import 'package:flutter/material.dart';

void main() {
  // Uygulama başlatılır. runApp fonksiyonu, widget ağacını oluşturur ve uygulamayı başlatır.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Uygulama başlığı belirlenir. Bu başlık, uygulama penceresinin üst kısmında görüntülenir.
      title: 'Flutter Demo',
      // Hata ayıklama modu bandını gizle. Bu özellik, hata ayıklama yapıldığında üst köşede görünen etiketi kaldırır.
      debugShowCheckedModeBanner: false,
      // Tema ayarları yapılır. ColorScheme, uygulama renklerini düzenlemek için kullanılır.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      // Ana sayfa widget'ı belirlenir. Bu widget, uygulamanın ilk yüklenen sayfasını temsil eder.
      home: const MyHomePage(title: 'Alert Dialog Çalışması'),
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
  // TextEditingController, TextField'tan girilen veriyi yönetmek için kullanılır.
  var tfcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Üst çubuk (AppBar) oluşturulur. Bu çubuk, sayfanın üst kısmında uygulama başlığı ile birlikte görüntülenir.
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Ana içerik bölümü (body) oluşturulur. Bu bölüm, sayfanın merkezine bir sütun yerleştirir.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // "Basit Alert" adlı düğme oluşturulur. Bu düğme tıklandığında bir Alert Dialog gösterilecektir.
            ElevatedButton(
              child: Text("Basit Alert"),
              onPressed: () {
                // AlertDialog gösterilir. Kullanıcıya bir şey sormak, bir bilgi iletmek veya bir seçenek sunmak için kullanılır.
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      // Alert Dialog başlığı belirlenir.
                      title: Text("Başlık"),
                      // Alert Dialog içeriği belirlenir. Bu alanda genellikle kullanıcıya iletilmesi istenen mesaj veya bilgi bulunur.
                      content: Text("İçerik"),
                      // Alert Dialog içinde yer alacak düğmeler belirlenir.
                      actions: [
                        // İptal düğmesi oluşturulur. Bu düğme tıklandığında Alert Dialog kapatılır.
                        TextButton(
                          child: Text("İptal"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        // Tamam düğmesi oluşturulur. Bu düğme tıklandığında bir işlem gerçekleştirilir (örneğin, ekrana yazdırma).
                        TextButton(
                          child: Text("Tamam"),
                          onPressed: () {
                            print("Tamam Seçildi");
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            // SingleChildScrollView, widget'ların taşma durumunda kaydırma özelliği ekler.
            SingleChildScrollView(
              child: ElevatedButton(
                child: Text("Özel Alert"),
                onPressed: () {
                  // AlertDialog gösterilir. Kullanıcıya bir şey sormak, bir bilgi iletmek veya bir seçenek sunmak için kullanılır.
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        // Alert Dialog başlığı belirlenir.
                        title: Text("Özel Alert", style: TextStyle(color: Colors.amber),),
                        // Alert Dialog içeriği belirlenir. Bu alanda genellikle kullanıcıya iletilmesi istenen mesaj veya bilgi bulunur.
                        backgroundColor: Colors.indigoAccent,
                        // Alert Dialog içinde yer alacak düğmeler belirlenir.
                        actions: [
                          // İptal düğmesi oluşturulur. Bu düğme tıklandığında Alert Dialog kapatılır.
                          TextButton(
                            child: Text("İptal",style: TextStyle(color: Colors.amber),),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          // Tamam düğmesi oluşturulur. Bu düğme tıklandığında bir işlem gerçekleştirilir (örneğin, ekrana yazdırma).
                          TextButton(
                            child: Text("Veri Oku",style: TextStyle(color: Colors.amber),),
                            onPressed: () {
                              // TextField'tan girilen veri alınır.
                              String alinanveri = tfcontrol.text;
                              print("Veri Okundu : $alinanveri");
                              // TextField temizlenir.
                              tfcontrol.text = "";
                              // Alert Dialog kapatılır.
                              Navigator.pop(context);
                            },
                          ),
                        ],
                        // Alert Dialog içeriği belirlenir. Bu alanda genellikle kullanıcıdan giriş beklenen widget'lar yer alır.
                        content: SingleChildScrollView(
                          child: SizedBox(
                            width: 40,
                            height: 80,
                            child: Column(
                              children: [
                                // TextField, kullanıcıdan metin girişi almak için kullanılır.
                                TextField(
                                  controller: tfcontrol,
                                  decoration: InputDecoration(
                                    labelText: "Veri",
                                    // TextField üzerinde yer alacak etiket (label).
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
