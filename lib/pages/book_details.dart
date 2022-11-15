import 'package:flutter/material.dart';

class book_details extends StatefulWidget {
  // const book_details({Key? key}) : super(key: key);
  final book_detail_name;
  final book_detail_picture;
  final book_detail_rent_price;
  final book_detail_sell_price;

  book_details({
    this.book_detail_name,
    this.book_detail_picture,
    this.book_detail_rent_price,
    this.book_detail_sell_price

  });


  @override
  State<book_details> createState() => _book_detailsState();
}

class _book_detailsState extends State<book_details> {
  @override
  Widget build(BuildContext context) {
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
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child:Container(
                  color: Colors.white,
                  child: Image.asset(widget.book_detail_picture),
                ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.book_detail_name,
                  style:TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0
                  ) ,),
                  title: new Row(
                    children: <Widget> [
                      Container(
                        child: new Text("\$${widget.book_detail_rent_price}",
                        style: TextStyle(color:Colors.grey, decoration:TextDecoration.lineThrough ),)
                      ),
                      Container(
                          child: new Text("\$${widget.book_detail_rent_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


          // ==============the first buttons==========

          Row(
            children: <Widget>[

              //  =============the size button================
              Container(
                  child: MaterialButton(onPressed: () {},
                    color: Colors.white30,
                    textColor: Colors.black,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: new Text("Language: Kannada")
                        ),

                        //Expanded(
                           // child: new Text("Author Name: abcdefgh")
                       // ),
                      ],
                    ),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
