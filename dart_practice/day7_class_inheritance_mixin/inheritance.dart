/*
class SuperClass {
  int myData = 10;
  SuperClass(int arg) {}
  SuperClass.first() {}

  void myFun() {
    print('Super..myFun()...');
  }
}

class SubClass extends SuperClass {
  int myData = 20;
  SubClass(): super(10) {}
  SubClass.name(): super.first() {}

  void myFun() {
    print('Sub...myFun()...myData: $myData, super.myData: ${super.myData}');
  }
}

main(List<String> args) {
  var obj = SubClass();
  obj.myFun();
  print('obj.myData: ${obj.myData}');
}
 */

class SuperClass {
  String name;
  int age;
  SuperClass(this.name, this.age) {}
}

class SubClass extends SuperClass{
  //SubClass(String name, int age) : super(name, age) {}
  SubClass(super.name, super.age);
}

main() {
  var obj = SubClass('kkang', 10);
  print('${obj.name}, ${obj.age}');
}