/*
abstract class User {
  void some();
}

class Customer extends User {
  @override
  void some() {}
}
 */

class User {
  int no;
  String name;

  User(this.no, this.name);
  String greet(String who) => 'Hello, $who. I am $name. no is $no';
}

class MySubClass implements User {//,MyInterface {
  int no = 10;
  String name = 'kim';

  @override
  String greet(String who) {
    return 'hello';
  }
}

main() {
  User user = MySubClass();
  print('${user.greet('lee')}');
}

