import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'CartPage.dart';
import 'EduPage.dart';
import 'HomePage.dart';
import 'Market_place_Page.dart';

class ProductView extends StatefulWidget {
  const ProductView( {Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  final String title;
  @override
  State<ProductView> createState() => _productview();
}



class _productview extends State<ProductView> {
  static int onCart = 0;
  int _selectedIndex = 1; //used to identify the selected page
  static List<String> img2 = [
    "assets/product_imgs/bakela_seed.png",
    "assets/product_imgs/ginger.png",
    "assets/product_imgs/plant.png",
    "assets/product_imgs/potato.png",
  ];
  static List<String> img = [
    "assets/product_imgs/shovel.png",
    "assets/product_imgs/rake.png",
    "assets/product_imgs/mini_shovel.png",
    "assets/product_imgs/pick_axe.png",
  ];

  static List<String> pname = [
    "\t\tPea\n\t 145.99 Birr",
    "\t\tGinger\n\t 99.99 Birr",
    "\t\tPlant\n\t 528.99 Birr",
    "\t\tPotato\n\t 98.99 Birr"
  ];
  static List<String> tname = [
    "\t\tShovel\n\t 458.99 Birr",
    "\t\tRake\n\t 598.99 Birr",
    "\t\tMini Shovel\n\t 698.99 Birr",
    "\t\tPick Axe\n\t 728.99 Birr"
  ];

  static List<String> alldescription = [
    "\t\tShovel\n\t 458.99 Birr",
    "\t\tRake\n\t 598.99 Birr",
    "\t\tMini Shovel\n\t 698.99 Birr",
    "\t\tPick Axe\n\t 728.99 Birr",
    "\t\tPea\n\t 145.99 Birr",
    "\t\tGinger\n\t 99.99 Birr",
    "\t\tPlant\n\t 528.99 Birr",
    "\t\tPotato\n\t 98.99 Birr"
  ];

  var allimg = img2 + img;
  var allname = pname + tname;

  void _goToCartPage(){
    setState(() {
      Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return const CartPage(title: "cart page");
        }
        ),
      );
    }
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
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
          break; // This message will be printed to the console
      }
      print("selected index is : $_selectedIndex");
    });
  }


  static final List<Widget> _productList = [];

  void _gotomarcketplace() {
    setState(() {
      Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return const Homepage(title: "Marcket place");
        }
        ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          color: Colors.green,
          child: Column(

            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,

              ),
              Row(children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                      onPressed: _gotomarcketplace,
                      icon: Icon(Icons.arrow_back_ios)),
                ),
                SizedBox(width: 260,),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: _goToCartPage,

                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      primary: Colors.white,

                    ),
                    child: const ImageIcon(

                      AssetImage("assets/cart.png")
                      ,size:100,

                    ),
                  ),
                ),
              ],),
              const Align(
                alignment: Alignment.topCenter,
                child: Text("  My Cart",
                  style: TextStyle(fontSize: 30, color: Colors.black),),
              ),

              //_cartproduct(img[0], pname[0], alldescription[0]),


              const SizedBox(
                height: 10,
              ),

              Container(
                height: 440,
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 95,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(13),),
                ),
                child: Column(
                  children: [
                    Image.asset(allimg[1], scale: 2,),
                    Container(
                      height: 123,
                    width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(13),),

                      ),
                      child: Row(children: [
SizedBox(width: 10,),
Column(children: [

                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("\n"+pname[0]+" per Kg",style: TextStyle(fontSize: 18),)
                        ),
                        SizedBox(width: 3,
                        height: 5,),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Text("This plant can grow \n\t\twith in a week \n\t\twith proper care.",style: TextStyle(fontSize: 14),)
                        ),
],
),
                        SizedBox(width: 5,),
                        Align(alignment: Alignment.bottomLeft,
                          child:
                        Row(children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star_half_outlined),
                          Text("4.0")
                        ],),)
                      ],
                      ),
                    ),
                  ],
                ),
              ),

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
}