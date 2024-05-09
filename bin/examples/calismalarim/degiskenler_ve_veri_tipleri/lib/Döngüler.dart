void main () {
  // 3,4,5

  for (var i = 3; i < 6; i++) {
    print(" a = $i");
  }

  // 10 ile 20 arasında 5 er 5 er
  // İ=i+5;

  for (var x = 10; x < 21; x += 5) {
    print(" a : $x");
  }

  // 20 ile 10 2 er 2 er

  for (var z = 20; z > 9; z -= 2) {
    print("a : $z");
  }

// 1,2,3

  var sayac = 1;
  while (sayac < 4) {
    print("while : $sayac");
    sayac += 1; // sayac = sayac + 1
  }

  // 3 ile 6 ---> for & while

  for (var x = 3; x < 7; x += 1)
    print("Döngü 1 : $x");

  var d = 3;
  while (d < 7) {
    print("Döngü 2 : $d");
    d += 1;
  }

// 0 ile 8 arası 2 şer;

  for (var p = 0; p < 9; p += 2) {
    print(" döngü 3 : $p");
  }

  var y = 0;
  while (y < 9) {
    print("döngü 4 : $y");
    y += 2;
  }

  // 8 den 0 a azalarak 2 şer

  for ( var b = 8; b> -1; b -=2) {print ("döngü 5 : $b"); }

  var sayac1 = 8;
  while (sayac1>-1) {print ("Döngü 6 : $sayac1"); sayac1 -=2; }
}