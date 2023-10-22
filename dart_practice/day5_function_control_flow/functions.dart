void printUser1() {
  print('hello world');
}

void printUser2() => print('world hello');

void some(int data1, {String? data2, bool? data3}) {}

String myFun({String data = 'hello'}) {
  return data;
}

someFun({required int arg1}) {
  print('someFun()... arg1 : $arg1');
}

void opFun(int arg1, [String ag2 = 'hello', bool arg3 = false]) {}

main() {
  //printUser1();
  //printUser2();

  //print('myFun() result : ${myFun()}');
  //print('myFun(world) result: ${myFun(data: "world")}');

  someFun(arg1: 10);
}