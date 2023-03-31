// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/HomePageButtons.dart';
import 'EduPage.dart';
import 'Market_place_Page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Home();
            }));
          }
          break; // This message will be printed to the console
        case 1:
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Homepage(title: 'Medications');
            }));
          }
          break; // This message will be printed to the console
        case 2:
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Noha();
            }));
          }
          break; // This message will be printed to the console
      }
      print("selected index is : $_selectedIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'lib/images/fruits.jpg',
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 220,
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              filled: true,
                              //fillColor: Color.fromRGBO(238, 237, 237, 1),
                              contentPadding: EdgeInsets.all(0),
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                              hintText: 'search',
                              hintStyle: TextStyle(
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                        MyHomePageButton(
                          icon: Icons.info_outline,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 80,
                    child: Text(
                      'First purches',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 19, 18, 18)),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 105,
                    child: Text(
                      '30% OFF',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 19, 18, 18),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 165,
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 19, 18, 18),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Check this out',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Catagories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Disscount',
                      style: TextStyle(fontSize: 14),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Sale',
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Favorite',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Near by me',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Best Sale Product',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 170,
                  width: MediaQuery.of(context).size.width - 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return _product('assets/product_imgs/bakela_seed.png',
                            "\t\tpea\n\t 145.99 Birr");
                      }),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Mina Market',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts_outlined),
            label: 'Education',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _product(String img, String detail) {
    return Container(
      width: 130,
      height: 90,
      margin: const EdgeInsets.only(left: 12, right: 12),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 7.0,
            spreadRadius: 0.5,
            offset: Offset(
              -4,
              -0.01,
            ),
          )
        ],
        color: Color.fromRGBO(110, 31, 12, 0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(23),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 120,
              width: 130,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(23),
                      topLeft: Radius.circular(23),
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3))),
              child: Image.asset(img, height: 100, width: 130)),
          Container(
            height: 5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              detail.split('\n')[0],
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Text(
                detail.split('\n')[1],
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
            ),
          ),
          Container(
            height: 5,
          ),
        ],
      ),
    );
  }
}
