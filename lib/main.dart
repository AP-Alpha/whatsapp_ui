import 'package:flutter/material.dart';
import 'package:watsapp_ui/constant.dart';
import 'package:watsapp_ui/homepage.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
