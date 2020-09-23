import 'package:flutter/material.dart';
import 'package:indianmoney_assignment/files/login_page.dart';
import 'package:indianmoney_assignment/files/profile.dart';
import 'package:indianmoney_assignment/files/register.dart';


void main() => runApp(MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new profile(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indianmoney App',
      theme: new ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}





