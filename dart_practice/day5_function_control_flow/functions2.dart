int plus(int no) {
  return no + 10;
}

int multiply(int no) {
  return no * 10;
}

Function testFun(Function argFun) {
  print('argFun : ${argFun(20)}');
  return multiply;
}

some(int f(int a)) {
  return f(30);
}

fun1(arg) {
  return 10;
}

Function fun2 = (arg) {
  return 10;
};


main(List<String> args) {
  /*
  var result = testFun(plus);
  print('result : ${result(20)}');
   */

  var res = some((int a){
    return a + 20;
  });
  print('res: $res');
}