import 'package:deliver_app/screen/home_screen.dart';
import 'package:deliver_app/screen/onbording_screen.dart';
import 'package:deliver_app/screen/splash_screen.dart';
import 'package:deliver_app/screen/tab_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
