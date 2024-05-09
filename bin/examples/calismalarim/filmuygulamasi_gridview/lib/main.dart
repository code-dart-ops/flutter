import 'package:filmuygulamasi_gridview/detay.dart';
import 'package:filmuygulamasi_gridview/filmler.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Filmler'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<filmler>> filmlerigetir() async {
    var filmlistesi = <filmler>[];

    var f1 = filmler("Black Swan", "blackswan.jpeg", 129.99, 1);
    var f2 = filmler("Ah Nerede", "ahnerede.jpeg", 89.0, 2);
    var f3 = filmler("The Fountain", "fountain.jpeg", 79.0, 3);
    var f4 = filmler("Noah", "noah.jpeg", 100.0, 4);
    var f5 = filmler("The Godfather", "godfather.jpeg", 149.50, 5);

    filmlistesi.add(f1);
    filmlistesi.add(f2);
    filmlistesi.add(f3);
    filmlistesi.add(f4);
    filmlistesi.add(f5);

    return filmlistesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<filmler>>(
        future: filmlerigetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var filmlistesi = snapshot.data;

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: filmlistesi!.length,
              itemBuilder: (context, indeks) {
                var film = filmlistesi[indeks];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detay(film: film)),
                    );
                  },
                  child: Card(
                    elevation: 8.0,
                    child: Container(
                      height: 250, // Card yüksekliği
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "resimler/${film.filmresmi}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              film.filmadi,
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${film.filmfiyati} \u{20BA}",
                              style: const TextStyle(fontSize: 16, color: Colors.lightBlue),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}