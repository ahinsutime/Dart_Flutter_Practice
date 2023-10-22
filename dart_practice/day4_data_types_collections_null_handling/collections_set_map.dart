main() {
  Set<int> set1 = {10, 20, 10};
  print(set1);

  set1.add(30);
  set1.add(40);
  print(set1);

  Set<int> set2 = Set();
  set2.add(10);
  set2.add(20);
  print(set2);

  Map<String, String> map1 = {'one': 'hello', 'two': 'world'};

  print(map1['one']);
  map1['one'] = 'world';
  print(map1['one']);
}