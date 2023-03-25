import 'package:flutter/material.dart';

import 'main.dart';

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
  int _selectedIndex = 2;   //used to identify the selected page

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(_selectedIndex) {
        case 0:
          {
            var message =  Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return const MyApp();
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
                  return const Homepage(title: 'Medications');
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
      body: Center(


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

              onPressed: _addProduct,

              child: const Align(
                alignment: Alignment.centerLeft,child: Text(
                "  seeds",
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
                  itemCount: _productList.length,
                  itemBuilder: (context,index){
                    return _productList[index];
                  }),


              ),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(

                onPressed: _addProduct,

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
                  itemCount: _productList.length,
                  itemBuilder: (context,index){
                    return _productList[index];
                  }),

            ),

          ],
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
    selectedItemColor: Colors.amber[800],
    onTap: _onItemTapped,

    ),);
  }


  void _addProduct(){
    setState(() {
      _productList.add(_product());
    });

  }




  Widget _product() {
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

            child: Image.asset('assets/product_imgs/shovel.png')
          ),

          Container(
            height: 5,
          ),
          Container(
            child: const Text("shovel", textAlign: TextAlign.left,style: TextStyle(fontSize: 17),),
          ),
          Container(
            height: 5,
          ),


        ],
      ),


    );


  }


}