// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lettuce'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.white,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Image.asset('assets/lettuce 1.jpg'),
                  ))
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Lettuce is a tasty leafy vegetable high in nutrients that is is fast and easy to grow.",
                    )),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Time to grow",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Each lettuce variety has a different growing season length, but most are mature within 30 to 70 days. If you're feeling impatient or craving some leafy greens, you can harvest single leaves whenever you like.",
                    )),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Potential Problems or Pests",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "There are some pitfalls to growing your own lettuce, but don’t let that stop you. Fungal diseases can pose threats, but proper cultural practices, like growing in a healthy, living soil, ample sun and good air circulation will prevent most diseases.",
                    )),
              )
            ],
          ),
        ],
      )),
    );
  }
}
