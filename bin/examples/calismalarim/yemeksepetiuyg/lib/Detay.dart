import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yemeksepetiuyg/yemekler.dart';

class detay extends StatefulWidget {

late yemekler yemek;

detay({required this.yemek});

  @override
  State<detay> createState() => _detayState();
}

class _detayState extends State<detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.yemek.yemekadi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler/${widget.yemek.yemekresim}"),


          Text( "${widget.yemek.yemekfiyat} \u{20BA}",
          style: TextStyle(fontSize: 48, color: Colors.lightBlue),
          ),

          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent), // butonin iç rengi
              child: Text ("Sipariş Ver", style: TextStyle(color: Colors.white),),

              onPressed: (){
                print ("${widget.yemek.yemekadi} sipariş verildi");

              },

            ),
          ),
        ],

        ),

      ),
    );
  }
}
