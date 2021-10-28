import 'package:ecommerce_app/screen/login_signup.dart';
import 'package:ecommerce_app/screen/new.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kodeeo-App",
      home: NewPage(),
    );
  }
}
