import 'package:flutter/material.dart';
// import 'dart:js_util';
class Cart_books extends StatefulWidget {
  const Cart_books({Key? key}) : super(key: key);

  @override
  State<Cart_books> createState() => _Cart_booksState();
}

class _Cart_booksState extends State<Cart_books> {

  var Books_in_cart=[
    {
      "Name":"2 States",
      "Picture":"images/books/RomanticB.png",//-----give loc of pic //
      "Author_Name":"Chetan Bhagat",
      "Rent_Price": 25,
      "Sell_Price": 50,
      "language":"English",
      "Description":"2 States: The Story of My Marriage commonly known as 2 States is a 2009 novel written by Chetan Bhagat. It is the story about a couple coming from two states in India, who face hardships in convincing their parents to approve of their marriage. Bhagat wrote this novel after quitting his job as an investment banker. This is his fourth book after Five Point Someone, One Night @ the Call Center and The Three Mistakes of My Life. ",
    },
    {
      "Name":"Shadow King",
      "Picture":"images/books/HistoricB.png",//-----give loc of pic //
      "Author_Name":"Lauren Johnson",
      "Rent_Price": 25,
      "Sell_Price": 50,
      "language":"English",
      "Description":" The Shadow King: The Life and Death of Henry VI "
          "A thrilling new account of the tragic story and troubled times of Henry VI, who inherited the crowns of both England and France and lost both."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Books_in_cart.length,
        itemBuilder: (context,index)
    {
      return Single_cart_book(
        cart_book_name: Books_in_cart[index]["Name"],
        cart_book_picture: Books_in_cart[index]["Picture"],
        cart_author_name: Books_in_cart[index]["Author_Name"],
        cart_rent_price: Books_in_cart[index]["Rent_Price"],
        cart_sell_price: Books_in_cart[index]["Sell_Price"],

      );
    });

  }
}
class Single_cart_book extends StatelessWidget {
  final cart_book_name;
  final cart_book_picture;
  final cart_author_name;
  final cart_rent_price;
  final cart_sell_price;
  final cart_description;

  Single_cart_book({
    this.cart_book_name,
    this.cart_book_picture,
    this.cart_author_name,
    this.cart_rent_price,
    this.cart_sell_price,
    this.cart_description,
});
  // const Single_cart_book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_book_picture,width: 80.0,height: 80.0,),
        title: new Text(cart_book_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
        subtitle: new Column(
          children: [
            // Row inside the column //
            new Row(
        children:[
            //=======this section is for the rent price of the book============//
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: new Text("Rent Price:"),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("₹${cart_rent_price}",style: TextStyle(color: Colors.teal),),
            ),

            //=======this section is for the sell price of the book============//

            new Padding(
              padding: const EdgeInsets.fromLTRB(20.0,8.0,8.0,8.0),
              child: new Text("Sell Price:"),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Text("₹${cart_sell_price}",style: TextStyle(color: Colors.teal),),
            ),

          ],
    ),
    //        ==============This section is for author name ======//
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(cart_author_name,style: TextStyle(color: Colors.teal,fontSize: 16.0,fontWeight: FontWeight.bold),),
            ),
    ],
      ),
        // trailing: new Column(
        //   children: [
        //     new IconButton(onPressed:(){}, icon: Icon(Icons.arrow_drop_up)),
        //     // new Text(),
        //     new IconButton(onPressed:(){}, icon: Icon(Icons.arrow_drop_down)),
        //   ],
        // ),
        ),

    );
  }
}
