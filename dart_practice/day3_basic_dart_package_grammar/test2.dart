// import 'test1.dart' show no, User, sayHello;
// import 'test1.dart' hide sayHello, User;

import 'test1.dart' as Test1;

void main(){
  print('${Test1.no}');

  Test1.sayHello();
  Test1.User user = Test1.User();
  user.sayHello();
}
