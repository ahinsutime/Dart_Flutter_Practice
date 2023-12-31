import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User {
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TEST"),
        ),
        body: TestScreen(),
      )
    );
  }
}

class TestScreen extends StatelessWidget {
  List<User> users = [
    User("홍길동", "0100001", "a@a.com"), User("홍길동", "0100001", "a@a.com"),
    User("홍길동", "0100001", "a@a.com"), User("홍길동", "0100001", "a@a.com"),
    User("홍길동", "0100001", "a@a.com"), User("홍길동", "0100001", "a@a.com"),
    User("홍길동", "0100001", "a@a.com"), User("홍길동", "0100001", "a@a.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("images/big.jpeg"),
          ),
          title: Text(users[index].name),
          subtitle: Text(users[index].phone),
          trailing: Icon(Icons.more_vert),
          onTap: (){
            print(users[index].name);
          }
        );
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: Colors.black);
      },
    );
  }
}

