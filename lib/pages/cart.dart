import 'package:flutter/material.dart';
//my imports
import 'package:book_rental_app/components/cart_books.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.teal,
          title: Text('Cart'),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {}),
          ]
      ),
      body: new Cart_books(),
      
      bottomNavigationBar: new Container(
        color: Colors.white70,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("₹500"),
            )
            ),
            Expanded(
                child: new MaterialButton(onPressed: (){},
                  child: new Text("Check Out", style: TextStyle(color: Colors.white70),),
                  color: Colors.teal,
                ),
            )
            
          ],
        ),
      ),
    );
  }
}
