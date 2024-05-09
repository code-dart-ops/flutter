import 'package:null_safety_kullanimi/interface.dart';

class ClassA implements Interface {
  @override
  int degisken = 10;

  @override
  void metod1() {
    print ("Merhaba interface");
  }

  @override
  String metod2() {
    return "Interface Çalışması";
  }




}