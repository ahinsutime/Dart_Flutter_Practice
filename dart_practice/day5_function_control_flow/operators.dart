class User {
  void some() {
    print("User...some()...");
  }
}

class User1{
  String? name;
  int? age;

  some1() {
    print('name: $name, age: $age');
  }
}





main() {
  int a = 8;
  print('a / 5 = ${a / 5}');
  print('a ~/ 5 = ${a ~/ 5}');

  Object obj = User();
  //obj.some();

  if (obj is User) {
    obj.some();
  }

  Object obj1 = User();
  (obj1 as User).some();

  /*
  var user = User1();
  user.name = 'kkang';
  user.age = 18;
  user.some1();
   */

  var user = User1()
    ?..name = 'kkang'
    ..age = 30
    ..some1();
}