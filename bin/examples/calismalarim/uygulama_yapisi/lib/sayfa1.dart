import 'package:flutter/material.dart';

class sayfa1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("Stateless Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Merhaba",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 24,
              ),
            ),
          ],


        ),
      ),

    );
  }
}