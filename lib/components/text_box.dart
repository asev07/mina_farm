// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String hintText;

  const MyTextBox({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green))),
      ),
    );
  }
}
