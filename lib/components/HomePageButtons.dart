// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePageButton extends StatelessWidget {
  final IconData icon;
  const MyHomePageButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
