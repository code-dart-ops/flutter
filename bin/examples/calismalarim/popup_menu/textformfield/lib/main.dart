
import 'package:flutter/material.dart';

// Uygulamanın başlangıcını sağlayan main fonksiyonu
void main() {
  runApp(const MyApp());
}

// Uygulamanın ana widget'ı olan MyApp sınıfı, StatelessWidget'dan türetilmiştir.
class MyApp extends StatelessWidget {
  // Sabit bir constructor kullanılarak widget'ın özellikleri belirlenir.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp, uygulamanın temel bileşenini sağlar.
    return MaterialApp(
      // Uygulamanın adı
      title: 'Flutter Demo',

      // Debug banner'ını kapatma
      debugShowCheckedModeBanner: false,

      // Tema ayarları
      theme: ThemeData(
        // Renk şemasını belirleme
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),

        // Material 3 kullanımı
        useMaterial3: true,
      ),

      // Ana ekranı temsil eden MyHomePage widget'ını belirleme
      home: const MyHomePage(title: 'Text Form Field Çalışması'),
    );
  }
}

// Ana sayfanın durumunu yöneten Stateful widget sınıfı
class MyHomePage extends StatefulWidget {
  // Sabit constructor kullanılarak widget'ın özellikleri belirlenir.
  const MyHomePage({super.key, required this.title});

  // Sayfanın başlığı
  final String title;

  // State sınıfını oluşturan factory method
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Ana sayfanın durumunu temsil eden State sınıfı
class _MyHomePageState extends State<MyHomePage> {
  // Formun durumunu takip etmek için bir anahtar (key)
  var formkey = GlobalKey<FormState>();

  // Kullanıcı adı ve şifre alanları için kontrolcüler (controller)
  var tfkullaiciadi = TextEditingController();
  var tfsifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Scaffold, temel materyal tasarımı ve düzenini sağlar.
    return Scaffold(
      // Uygulama çubuğu (app bar)
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Ekranın ortasına yerleştirilmiş bir sütun (column)
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Form widget'ı, kullanıcı girişi için bir form içerir.
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    // Kullanıcı adı giriş alanı
                    TextFormField(
                      controller: tfkullaiciadi,
                      decoration: InputDecoration(
                          hintText: "Kullanıcı Adı"
                      ),
                      validator: (tfgirdisi) {
                        if (tfgirdisi!.isEmpty) {
                          return "Kullanıcı Adı Giriniz";
                        }
                        return null;
                      },
                    ),

                    // Şifre giriş alanı
                    TextFormField(
                      controller: tfsifre,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Şifre"
                      ),
                      validator: (tfgirdisi) {
                        if (tfgirdisi!.isEmpty) {
                          return "Şifre Giriniz";
                        }
                        if (tfgirdisi.length < 6) {
                          return "Şifreniz en az 6 haneli olmalıdır.";
                        }
                        return null;
                      },
                    ),

                    // Giriş butonu
                    ElevatedButton(
                      child: Text("GİRİŞ"),
                      onPressed: () {
                        // Formun doğruluğunu kontrol etme
                        bool kontrolsonucu = formkey.currentState!.validate();
                        if (kontrolsonucu == true) {
                          // Doğrulama başarılıysa kullanıcı adı ve şifreyi yazdırma
                          String ka = tfkullaiciadi.text;
                          String s = tfsifre.text;
                          print("Kullanıcı Adı: $ka : Şifre: $s");
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
