import 'package:flutter/material.dart';

class sonucekrani extends StatefulWidget {
  const sonucekrani({super.key});

  @override
  State<sonucekrani> createState() => _sonucekraniState();
}

class _sonucekraniState extends State<sonucekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),

    );
  }
}
