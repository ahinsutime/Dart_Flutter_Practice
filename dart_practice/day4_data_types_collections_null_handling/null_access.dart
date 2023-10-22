String? str = "hello";

main() {
  //str.isEmpty;
  str?.isEmpty;

  int? no1 = 10;
  bool? result1 = no1?.isEven;
  print("result 1: $result1");

  no1 = null;
  bool? result2 = no1?.isEven;
  print("result 2: $result2");

  List<int>? list = [10, 20, 30];
  print('list[0]: ${list[0]}');

  list = null;
  print('list[0]: ${list?[0]}');

  int? data3;
  data3 ??= 10;
  print('data3: $data3');

  data3 ??= null;
  print('data3: $data3');

  String? data4 = 'hello';
  String? result = data4 ?? 'world';
  print('result: $result');

  data4 = null;
  result = data4 ?? 'world';
  print('result: $result');
}