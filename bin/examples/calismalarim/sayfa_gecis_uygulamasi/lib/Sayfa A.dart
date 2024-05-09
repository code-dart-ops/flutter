import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/Sayfa%20B.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa A"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaB()));
                },
                child: Text("Sayfa B'ye git"))

          ],

        ),
      ),

    );
  }
}
