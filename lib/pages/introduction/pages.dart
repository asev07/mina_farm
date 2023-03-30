// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyPage extends StatelessWidget {
  final String link;
  final String text;
  const MyPage({super.key, required this.link, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.lime[400],
              fontSize: 35,
            ),
          ),
          Lottie.network(link, height: 400, repeat: false),
        ],
      ),
    );
  }
}
