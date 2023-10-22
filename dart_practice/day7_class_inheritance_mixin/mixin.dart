mixin Amixin on Asuper {
}

class Asuper {
}

class Bclass extends Asuper with Amixin {
}

//class Cclass with Amixin{}

mixin class SomeClass {
  SomeClass();
  int someData = 10;
  func(){
    print('mixin super class');
  }
}

class OtherClass with SomeClass {
  OtherClass(): super();

  void sayHello() {
    print('someData: $someData');
    func();
  }
}

class User {
  User() {}
}

//class Server with User {
//}

mixin MyMixin {
  int mixinData = 10;

  void mixInFun() {
    print('MyMixin...mixInFun()...');
  }
}

class MySuper {
  int superData = 20;
  void superFun() {
    print('MySuper...superFun()');
  }
}

class MyClass extends MySuper with MyMixin {
  void sayHello() {
    print('class data: $superData, mixin data: $mixinData');
    superFun();
    mixInFun();
  }
}

main() {
  var obj = MyClass();
  obj.sayHello();

  if (obj is MyMixin) {
    print('obj is MyMixin');
  } else {
    print('obj is not MyMixin');
  }

  MyMixin obj2 = MyClass();
}