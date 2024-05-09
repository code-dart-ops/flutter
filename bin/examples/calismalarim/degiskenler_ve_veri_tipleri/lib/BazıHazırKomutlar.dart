import 'dart:math';

void main () {
  int min = 5;
  int max = 10;

  var r = Random();  // Rastgele sayı alma min ve max sayı arasında

  int rastgelesayi = min + r.nextInt((max - min) + 1); // 5 ile 10 arasında

      {
    print(rastgelesayi);
  }

  var x = 6.5 ; // Yukarıya yuvarlama
  int c = x.ceil();

  print ("c : $c");

  int f = x.floor(); // aşağıya yuvarlama
print ("f : $f");

double s = sqrt (x);  // Karekök alma
print ("s : $s");

int y = -10;  //mutlak değere çevirme
int a = y.abs();
print ("a : $a");

num p = pow(2,3);  // üslü sayılarla işlem yapma
print ("p : $p");



  }

