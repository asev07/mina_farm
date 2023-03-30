import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Market_place_Page.dart';

class Noha extends StatelessWidget {
  const Noha({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 2;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(_selectedIndex) {
        case 0:
          {
            var message = Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return const Home();
                }));
          }
          break; // This message will be printed to the console
        case 1:
          {
            var message = Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return const Homepage(title: 'Medications');
                }));
          }
          break; // This message will be printed to the console
        case 2:
          {
            var message = Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return const Noha();
                }));
          }
          break;// This message will be printed to the console
      }
      print("selected index is : $_selectedIndex");



    });
  }





  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Mina Education'),
        ),
        body: SingleChildScrollView(
          child: Column(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              children: [
                Column(
                  // Column is also a layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).
                  //   margin: EdgeInsets.all(24),

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        ExpansionTile(
                          title: const Text('Essentials'),
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(children: [
                                      Container(
                                        child: Image.asset(
                                            'assets/adequate space icon.png'),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Adequate space"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 5),
                                      )
                                    ]),
                                    Spacer(),
                                    Column(children: [
                                      Container(
                                        child: Image.asset("assets/soil.png"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Quality soil"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 5),
                                      )
                                    ])
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(children: [
                                      Container(
                                        child: Image.asset("assets/seed.png"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Seedlings"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 5),
                                      )
                                    ]),
                                    Spacer(),
                                    Column(children: [
                                      Container(
                                        child: Image.asset("assets/pest.png"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Pest control"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 5),
                                      )
                                    ])
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(children: [
                                      Container(
                                        child: Image.asset("assets/tools.png"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Gardening Tools"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 5),
                                      )
                                    ]),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        ExpansionTile(
                          title: const Text('What is recommended to grow'),
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(children: [
                                      Container(
                                        child:
                                            Image.asset('assets/lettuce.png'),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Lettuce"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 5),
                                      )
                                    ]),
                                    Spacer(),
                                    Column(children: [
                                      Container(
                                        child:
                                            Image.asset("assets/carrots.png"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Carrots"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 5),
                                      )
                                    ])
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(children: [
                                      Container(
                                        child:
                                            Image.asset("assets/edamame.png"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Green Beans"),
                                        margin:
                                            EdgeInsets.only(left: 24, top: 5),
                                      )
                                    ]),
                                    Spacer(),
                                    Column(children: [
                                      Container(
                                        child: Image.asset("assets/peas.png"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 15),
                                        width: 97,
                                        height: 97,
                                      ),
                                      Container(
                                        child: Text("Peas"),
                                        margin:
                                            EdgeInsets.only(right: 24, top: 5),
                                      )
                                    ])
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        ExpansionTile(
                          title: Text("Common mistakes while gardening"),
                          children: [
                            ListTile(
                              title: Text(
                                "Planting too much",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Planting too soon (or too late)",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Planting in just any old soil",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Planting where there's not enough sun",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Crowding your plants",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ]),

        ),
        bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
    label: 'Home',
    backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.shopping_bag_outlined) ,
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
}
