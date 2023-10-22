main() {
  List list1 = [10, 'hello', true];
  list1[0] = 20;
  list1[1] = 'world';
  list1[2] = false;

  print('List: [${list1[0]}, ${list1[1]}, ${list1[2]}]');

  List<int> list2 = [10, 20, 30];
  //lise2[0] = 'hello';
  print(list2);

  list2.add(40);
  list2.add(50);
  print(list2);

  list2.removeAt(0);
  print(list2);

  //var list3 = List<int>.filled(3, 0);
  var list3 = List<int>.filled(3, 0, growable: true);
  print(list3);

  list3[0] = 10;
  list3[1] = 20;
  list3[2] = 30;
  print(list3);

  list3.add(40);

  var list4 = List<int>.generate(3, (index) => index * 10, growable: true);
  print(list4);
}