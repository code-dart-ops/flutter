



import 'package:filmuygulamasi_gridview/filmler.dart';
import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final filmler film;

  Detay({required this.film});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.film.filmadi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 200,
              height: 300,
              child: Image.asset("resimler/${widget.film.filmresmi}"),
            ),
            Text(
              "${widget.film.filmfiyati} ₺",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                print("${widget.film.filmadi} Satın Alındı");
              },
              child: Text("Satın Al"),
            ),
          ],
        ),
      ),
    );
  }
}
