// @dart=2.9
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:book_rental_app/components/horizontal_axis.dart';
import 'package:book_rental_app/components/horizontal_axis2.dart';
import 'package:book_rental_app/components/Books.dart';

void main() {
  runApp(
      MaterialApp(
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
                   onPressed: () {})

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
                 leading: Icon(Icons.home),
               ),
               ),
               InkWell(
                 onTap: () {},
                 child: ListTile(
                   title: Text('My Account'),
                   leading: Icon(Icons.person),
                 ),
               ),
               InkWell(
                 onTap: () {},
                 child: ListTile(
                   title: Text('My Orders'),
                   leading: Icon(Icons.shopping_basket),
                 ),
               ),
               InkWell(
                 onTap: () {},
                 child: ListTile(
                   title: Text('Categories'),
                   leading: Icon(Icons.dashboard),
                 ),
               ),

         InkWell(
           onTap: () {},
           child: ListTile(
             title: Text('My Favourites'),
             leading: Icon(Icons.favorite),
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
             leading: Icon(Icons.help, color: Colors.blue),
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
             child: new Text('Categories'),),

           //  Horizontal list view begins here
             HorizontalList(),
             new Padding( padding: const EdgeInsets.all(10.0),
               child: new Text('Authors'),),
             HorizontalList2(),
             new Padding( padding: const EdgeInsets.all(20.0),
             child: new Text('Recent Reads'),),

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