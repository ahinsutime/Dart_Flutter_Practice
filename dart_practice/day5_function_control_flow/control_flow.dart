
some(arg) {
  switch(arg) {
    case 'A':
      print('A');
      break;
    case 'B':
      print('B');
      break;
  }
}

//class User{}

some1() {
  //throw Exception('my exception');
  //throw 'my exception';
  //throw User();
  throw FormatException('my exception');
}

main(List<String> args) {

  /*
  var list = [10, 20, 30];
  for(var i=0; i < list.length; i++) {
    print(list[i]);
  }

  for(var x in list){
    print(x);
  }

  some('A');
   */

  try{
    print('step1...');
    some1();
    print('step2...');
  } on FormatException catch(e){
    print('step3...$e');
  } on Exception {
    print('step4...');
  }
  finally {
    print('step5...');
  }
  print('step6...');


  try {
    some1();
  } catch(e) {
    print('catch...$e');
  }
}