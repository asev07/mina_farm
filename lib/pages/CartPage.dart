import 'package:flutter/material.dart';


import 'EduPage.dart';
import 'Home.dart';
import 'Market_place_Page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  final String title;
  @override
  State<CartPage> createState() => _cartpage();
}



class _cartpage extends State<CartPage> {
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


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          {
            var message = Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return const Home(title: 'Medications');
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

  void _gotomarcketplace(){
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
        child:Container(color: Colors.black12 ,child: Column(

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
                    onPressed: _gotomarcketplace, icon: Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(width: 260,),
              TextButton(onPressed: () {},
                child: Text(
                  "Clear($onCart)", style: TextStyle(fontSize: 20),),),


            ],),
            const Align(
              alignment: Alignment.topCenter,
              child: Text("  My Cart",
                style: TextStyle(fontSize: 30, color: Colors.black),),
            ),

            //_cartproduct(img[0], pname[0], alldescription[0]),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 500 ,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: allimg.length,
                  itemBuilder: (context,index){
                    return _cartproduct(allimg[index], allname[index], alldescription[index]);
                  }),
            ),



            const SizedBox(
              height: 20,
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


  Widget _cartproduct(String img, String pname, String description) {
    return Column(children :[
      Container(
      height: 110,
      width: MediaQuery.of(context).size.width-35,

      decoration: const BoxDecoration(
        color: Colors.green,
        

        borderRadius: BorderRadius.all(Radius.circular(13),),
      ),

      child: Row(
        children: [

          Container(
            height: 110,
          width: 100,
            decoration: const BoxDecoration(
                color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(13),),
            ),

          child :Image.asset(img,),
          ),
          SizedBox(width: 3,),
          Align(
            alignment: Alignment.topCenter,
          child: Text("\n"+pname,style: TextStyle(fontSize: 18),)
          ),
          SizedBox(width: 10,),


        Align(
          alignment: Alignment.bottomLeft,
            child :
            Container(
            height: 40,
            width: 40,

            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle
            ),
              child:  Align(
                alignment: Alignment.center,child: Text('+',style: TextStyle(fontSize: 40),),
          ),
            ),
        ),

          SizedBox(width: 5,),
          Align( alignment: Alignment.bottomCenter,child: Text("4",style: TextStyle(fontSize: 35)),),
          SizedBox(width: 5,),
          Align(
            alignment: Alignment.bottomLeft,
            child :
            Container(
              height: 40,
              width: 40,

              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle
              ),
              child:  Align(
                alignment: Alignment.center,child: Text('-',style: TextStyle(fontSize: 40),),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child :IconButton(onPressed: (){}, icon: Icon(Icons.highlight_remove_sharp,size: 40,),
          ),
          ),],
      ),
    ),
      SizedBox(height: 30,),
    ],

    );
  }
}