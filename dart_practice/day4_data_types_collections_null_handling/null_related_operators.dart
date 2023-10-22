//int a1;
late int a2;

int? a1 = 20;

int? some(arg) {
  if (arg == 10) {
    return 0;
  } else {
    return null;
  }
}

main() {
  // print("${a2 + 10}");
  a2 = 10;
  print("${a2 + 10}");

  a1!;
  a1 = null;
  //a1!;

  int a = some(10)!;
  print('a: $a');

  //int b = some(20)!;
  //print('b: $b');
}