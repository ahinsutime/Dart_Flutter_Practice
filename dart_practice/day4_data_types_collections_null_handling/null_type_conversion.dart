
int a1 = 10;
int? a2 = 20;

main() {
  /*
  //a1 = a2;
  a2 = a1;
  */

  a1 = a2 as int;
  print("a1: $a1, a2: $a2");
}

