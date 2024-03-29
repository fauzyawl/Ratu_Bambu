import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

//imports
import 'package:ratu_bambu/componen/products.dart';
import 'package:ratu_bambu/pages/cart.dart';
import 'package:ratu_bambu/componen/products.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/1.jpg'),
        AssetImage('images/2.jpg'),
        AssetImage('images/3.jpg'),
        AssetImage('images/4.jpg'),
      ],
      autoplay: true,
//      animationCurve: Curves.slowMiddle,
//      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.red,
      dotBgColor: Colors.transparent,
      indicatorBgPadding: 2.0,
    ),
  );


    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.greenAccent,
        title: Text('Ratu Bambu'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          })
        ],
      ) ,

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//header
            new UserAccountsDrawerHeader(accountName: Text('admin'),
              accountEmail: Text('admin@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.greenAccent
              ),
            ),

//body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart ),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Prodak'),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
