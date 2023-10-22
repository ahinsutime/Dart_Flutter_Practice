class User {
  late String name;
  late int age;

  /*
  User(String name, int age){
    this.name = name;
    this.age = age;
  }
   */

  User(this.name, this.age);

  sayHello() {
    print('name: $name, age: $age');
  }
}

class MyClass {
  late int data1;
  late int data2;

  /*
  MyClass(List<int> args)
    : this.data1 = args[0],
      this.data2 = args[1] { }
   */

  MyClass(List<int> args)
      : this.data1 = calFun(arg1),
        this.data2 = carFun(arg2) { }

  static int calFun(int arg) {
    return arg * 10;
  }

  printData() {
    print('$data1, $data2');
  }
}