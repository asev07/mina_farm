// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:mina_farm/pages/introduction/pages.dart';
import 'package:mina_farm/pages/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController _controller = new PageController();
  bool onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onlastpage = (index == 2);
                });
              },
              controller: _controller,
              children: [
                MyPage(
                    link:
                        'https://assets9.lottiefiles.com/packages/lf20_47pyyfcf.json',
                    text: 'Buy product online'),
                MyPage(
                    link:
                        'https://assets3.lottiefiles.com/packages/lf20_x9c4hmtd.json',
                    text: 'Online education'),
                MyPage(
                    link:
                        'https://assets3.lottiefiles.com/private_files/lf30_ngencarb.json',
                    text: 'Mina farm'),
              ],
            ),
            Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ColorTransitionEffect(activeDotColor: Colors.lime),
                  ),
                  onlastpage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }),
                            );
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
