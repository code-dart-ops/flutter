import 'package:null_safety_kullanimi/KonserveBoyut.dart';

void main (){

UcretAl(Konserveboyut.Buyuk);



}

void UcretAl (Konserveboyut boyut) {
  switch (boyut) {
    case Konserveboyut.Kucuk :
      {
        print(20 * 30);
      }
      break;

    case Konserveboyut.Orta:
      {
        print(30 * 30);
      }
      break;

    case Konserveboyut.Buyuk :
      {
        print(40 * 30);
      }
  }
}