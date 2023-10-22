/*
main(){
  var a1 = 10;
  var a2 = null;
  var a3;
  //var? a4 = null;
}
*/

var a1 = 10;
var a2 = null;
var a3;

testFun1(){
  a1 = 20;
  //a2 = null;
  a2 = 20;
  a2 = "hello";
  a2 = null;

  a3 = 20;
  a3 = "hello";
  a3 = null;
}

int no1 = 10;
int? no2;

var a1 = no1;
var a2 = no2;

testFun2(){
  a1 = 20;
  //a1 = null;

  a2 = 20;
  //a2 = 'hello';
  a2 = null;

}