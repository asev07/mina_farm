// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mina_farm/pages/HomePage.dart';
import 'package:mina_farm/pages/introduction/intropage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
