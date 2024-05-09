import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _State();
}

class _State extends State<Anasayfa> {
  late var webviewcontroller ;
  late var controller;
  @override
void initState(){
    super.initState();
    controller = webviewcontroller ()
    ..setJavaScriptMode (JavaScriptMode.unrestricted)
    ..loadRequest (Uri.parse("https://flutter.dev/"));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text ("Webview Kullanımı"),),
      body: WebViewWidget(controller: controller,),


    );
  }
}
