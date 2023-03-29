import 'package:flutter/material.dart';

import 'EduPage.dart';
import 'Home.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  final String title;
  @override
  State<Homepage> createState() => _homepage();
}



class _homepage extends State<Homepage> {

  List<String> img2 = [
    "assets/product_imgs/bakela_seed.png",
    "assets/product_imgs/ginger.png",
    "assets/product_imgs/plant.png",
    "assets/product_imgs/potato.png",
  ];
  List<String> img = [
    "assets/product_imgs/shovel.png",
    "assets/product_imgs/rake.png",
    "assets/product_imgs/mini_shovel.png",
    "assets/product_imgs/pick_axe.png"
  ];
  int _selectedIndex = 1;   //used to identify the selected page
    double product_price =  299.99;
    static int pi=0;
    static int ti=0;
 List<String> pname=["\t\tpea\n\t 145.99 Birr","\t\tginger\n\t 99.99 Birr","\t\tplant\n\t 528.99 Birr","\t\tpotato\n\t 98.99 Birr"];

  List<String> tname=["\t\tshovel\n\t 458.99 Birr","\t\trake\n\t 598.99 Birr","\t\tmini shovel\n\t 698.99 Birr","\t\tpick_axe\n\t 728.99 Birr"];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(_selectedIndex) {
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
          break;// This message will be printed to the console
      }
      print("selected index is : $_selectedIndex");



    });
  }




  static List<Widget> _productList = [];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(


          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
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
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  <Widget>[

                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("  Mina Market",style: TextStyle(fontSize: 30,color: Colors.black),),
                  ),


                  SizedBox(
                    width: MediaQuery.of(context).size.width-270,
                  ),
                  IconButton(
                    iconSize: 35,
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    onPressed: () {
                      setState( () {},);
                    },
                  ),


              ],
              ),


              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width-35 ,
                height: 50,
                child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              ),


              const SizedBox(
                height: 10,
              ),
        SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(

                 onPressed: _addSeedProduct,

                child: const Align(
                  alignment: Alignment.centerLeft,child: Text(
                  "  Seeds",
                  style:TextStyle(fontSize: 24.0,color: Colors.black),

                  // Set the width to 200 logical pixels
                  textAlign: TextAlign.left,),


                ),
            ),
        ),


              Container(
                height: 170 ,
                width: MediaQuery.of(context).size.width-40,
                child:
                    ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){
                      return _product(img2[index], pname[index]);
                    }),


                ),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextButton(

                  onPressed: _addToolProduct,

                  child:const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                    "  Gardening tools",
                    style: TextStyle(fontSize: 24.0,color: Colors.black),
                    // Set the width to 200 logical pixels
                    textAlign: TextAlign.left,),


                ),
                ),
              ),

              Container(
                height: 170 ,
                width: MediaQuery.of(context).size.width-40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){
                      return _product(img[index], tname[index]);
                    }),

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


  void _addToolProduct(){
    setState(() {
      for(int i=0;i<4;i++) {

       // _toolproductList.add(_product(img[ti], tname[ti]));
        ti++;
        if (ti == 4) {
          ti = 0;
        }
      }
    });

  }
  void _addSeedProduct(){
    setState(() {
      for(int i=0;i<4;i++) {

        _productList.add(_product(img2[pi], pname[pi]));

        pi++;
        if (pi == 4) {
          pi = 0;
        }
      }
    });

  }




  Widget _product(String img,String detail) {
    return Container(
      width: 130,
      height: 90,
      margin: const EdgeInsets.only(left: 12,right: 12),
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
                    bottomRight: Radius.circular(3)
                )
            ),

            child: Image.asset(img,height:100,width: 130)
          ),

          Container(
            height: 5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(detail, textAlign: TextAlign.left,style: TextStyle(fontSize: 14),),
          ),
          Container(
            height: 5,
          ),


        ],
      ),


    );


  }


}