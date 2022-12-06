import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
import 'package:book_rental_app/components/horizontal_axis.dart';
import 'package:book_rental_app/components/horizontal_axis2.dart';
import 'package:book_rental_app/components/Books.dart';
import 'package:book_rental_app/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300.0,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('images/img.jpg'),
          AssetImage('images/img2.jpg'),
          AssetImage('images/img3.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,

      ),
    );
    return Scaffold(
      appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.teal,
          title: Text('Rental_Book'),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {}),

            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white,),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
                })

          ]
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Pragati Soley'),
              accountEmail: Text('pragatisoley@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.blueGrey
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.teal,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.teal,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.teal,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.teal,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Favourites'),
                leading: Icon(Icons.favorite,color: Colors.teal,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          //padding Widget
          new Padding( padding: const EdgeInsets.all(8.0),
            child: new Text('Categories',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),),

          //  Horizontal list view begins here
          HorizontalList(),
          Divider(
            thickness: 5.0,
          ),
          new Padding( padding: const EdgeInsets.all(10.0),
            child: new Text('Authors',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),),
          HorizontalList2(),
          Divider(
            thickness: 5.0,
          ),
          new Padding( padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Reads',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),),

          //Grid view
          Container(
            height: 320.0,
            child: Books(),
          )



        ],
      ),

    );

  }
}