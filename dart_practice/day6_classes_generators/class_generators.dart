class MyClass {
  MyClass(int data1, int data2) {
    print('MyClass() call...');
  }
  MyClass.first(int arg) : this(arg, 0);
  MyClass.second() : this.first(0);
}

//var obj1 = MyClass();
//var obj2 = MyClass().first();
//var obj3 = MyClass().second();

class MyClassFactory {
  MyClassFactory._instance();

  factory MyClassFactory() {
    return MyClassFactory._instance();
  }
}

class Image {
  late String url;
  static Map<String, Image> _cache = <String, Image> {};
  Image._instance(this.url);
  factory Image(String url) {
    if (_cache[url] == null) {
      var obj = Image._instance(url);
      _cache[url] = obj;
    }
    return _cache[url]!;
  }
}

class ConstClass {
  final int data;
  const ConstClass(this.data);
}

main() {
  var image1 = Image('a.jpg');
  var image2 = Image('a.jpg');
  print('image1 == image2 : ${image1 == image2}');

  var obj1 = ConstClass(10);
  var obj2 = ConstClass(20);
  print('obj1.data: ${obj1.data}, obj2.data: ${obj2.data}');

  var obj3 = const ConstClass(100);
  var obj4 = const ConstClass(100);
  var obj5 = ConstClass(100);

  print('obj1 == obj2: ${obj1==obj2}');
  print('obj3 == obj4: ${obj3==obj4}');
  print('obj3 == obj5: ${obj3==obj5}');
}

