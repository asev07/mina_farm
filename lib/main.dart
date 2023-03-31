// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mina_farm/pages/CartPage.dart';
import 'package:mina_farm/pages/Market_place_Page.dart';
import 'package:mina_farm/pages/ProductView.dart';
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
      home: LoginPage(),
      //home: ProductView(title: 'Product Page',),
    );
  }
}
