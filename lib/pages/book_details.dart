import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:book_rental_app/main.dart';

class book_details extends StatefulWidget {
  // const book_details({Key? key}) : super(key: key);
  final book_detail_name;
  final book_detail_picture;
  final book_detail_author_name;
  final book_detail_rent_price;
  final book_detail_sell_price;
  final book_detail_description;

  book_details({
    this.book_detail_name,
    this.book_detail_picture,
    this.book_detail_author_name,
    this.book_detail_rent_price,
    this.book_detail_sell_price,
    this.book_detail_description,

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
          title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));},
              child: Text('Rental_Book')),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {}),
          ],
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
                footer:new Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: new Text(widget.book_detail_name,
                    style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold ),),
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("₹${widget.book_detail_rent_price}/week",
                        style: TextStyle(color: Colors.blueGrey,fontSize: 18.0, fontWeight:FontWeight.bold),
                        ),
                        Text("₹${widget.book_detail_sell_price}",
                          style: TextStyle(color: Colors.blueGrey,fontSize: 18.0, fontWeight:FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
            ),
            ),
                ),
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context ,
                          builder: (context){
                        return new AlertDialog(
                          title: new Text("Language"),
                          content: new Text("choose the language"),
                          actions: [
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),
                            )
                          ],
                        );
                      });
                    },
                    color:Colors.teal,
                    textColor: Colors.black,
                    elevation: 0.7,
                    child:Row(
                      children: [
                        Expanded(child: new Text("Language")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                        Expanded(child: new Text("Quantity")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),

                      ],
                    ) ,

                  ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color:Colors.teal,
                    textColor: Colors.black,
                    elevation: 0.2,
                    child: new Text("Rent Book Now"),
                  ),
              ),
              new IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart, color: Colors.teal,)),
              new IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.teal,))

            ],
          ),

            Divider(),
                new ListTile(
                  title: new Text("Book Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  subtitle: new Text("${widget.book_detail_description}",style: TextStyle(color: Colors.blueGrey,fontSize: 15.0),),
                ),
                Divider(),

          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0 , 5.0, 5.0, 5.0),
                child: new Text("Author Name", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text (widget.book_detail_author_name,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0),),
              ),
            ],
          ),
      Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Books"),
        ),
      //    Similar Product section
          Container(
            height: 360.0,
            child: Similar_books(),


          )
      ],
              ),
    );

  }
  }
class Similar_books extends StatefulWidget {
  const Similar_books({Key? key}) : super(key: key);

  @override
  State<Similar_books> createState() => _Similar_booksState();
}

class _Similar_booksState extends State<Similar_books> {
  var books_list=[
    {
      "Name":"Physics NCERT",
      "Picture":"images/books/EducationalB.png",//-----give loc of pic //
      "Author_Name":"NCERT",
      "Rent_Price": 25,
      "Sell_Price": 50,
      "Description":" The National Council of Educational Research and Training (NCERT) appreciates the hard "
          "work done by the textbook development committee responsible for this book. We wish to thank the"
          "Chairperson of the advisory group in science and mathematics, Professor J.V. Narlikar and the"
          "Chief Advisor for this book, Professor A.W. Joshi for guiding the work of this committee. Several"
          "teachers contributed to the development of this textbook; we are grateful to their principals for"
          "making this possible. We are indebted to the institutions and organisations which have generously"
          "permitted us to draw upon their resources, material and personnel.",
    },
    {
      "Name":"2 States",
      "Picture":"images/books/RomanticB.png",//-----give loc of pic //
      "Author_Name":"Chetan Bhagat",
      "Rent_Price": 25,
      "Sell_Price": 50,
      "Description":"2 States: The Story of My Marriage commonly known as 2 States is a 2009 novel written by Chetan Bhagat. It is the story about a couple coming from two states in India, who face hardships in convincing their parents to approve of their marriage. Bhagat wrote this novel after quitting his job as an investment banker. This is his fourth book after Five Point Someone, One Night @ the Call Center and The Three Mistakes of My Life. ",
    },
    {
      "Name":"Shadow King",
      "Picture":"images/books/HistoricB.png",//-----give loc of pic //
      "Author_Name":"Lauren Johnson",
      "Rent_Price": 25,
      "Sell_Price": 50,
      "Description":" The Shadow King: The Life and Death of Henry VI "
          "A thrilling new account of the tragic story and troubled times of Henry VI, who inherited the crowns of both England and France and lost both."
    },
    {
      "Name":"The Hindu",
      "Picture":"images/books/ReligiousB.png",//-----give loc of pic //
      "Author_Name":"Manju Sehgal",
      "Rent_Price": 25,
      "Sell_Price": 50,
      "Description":"Manak Sehgal Manju Sehgal, a student of history served Department of culture, National archives of India. Being the student of history, she has written several articles which were published in leading journals. She studied about Mahatma Gandhi and his political and social activities. She compiled several bookshop on the life of Bhagat Singh & another one on proscribed publicationdharti ki pukaar—which contained material banned by the British Raj. Her other books are—timir se Prakash ki ore—anand Sagar & Hindu on ke Adhar granth. Spiritualism inspires her from her very childhood. ",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: books_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Similar_Single_book(
            book_name: books_list[index]['Name'],
            book_picture: books_list[index]['Picture'],
            author_name: books_list[index]['Author_Name'],
            rent_price: books_list[index]['Rent_Price'],
            sell_price: books_list[index]['Sell_Price'],
            description:books_list[index]['Description'],
          );
        }) ;
  }
}
class Similar_Single_book extends StatelessWidget {
  final book_name;
  final book_picture;
  final author_name;
  final rent_price;
  final sell_price;
  final description;
  Similar_Single_book({
    this.book_name,
    this.book_picture,
    this.author_name,
    this.rent_price,
    this.sell_price,
    this.description,
  });
  // const Single_prod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: book_name,
        child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new book_details(
                  //here we are passing the values of the book to the book_details
                  book_detail_name: book_name,
                  book_detail_picture: book_picture,
                  book_detail_author_name:author_name,
                  book_detail_rent_price: rent_price,
                  book_detail_sell_price: sell_price,
                  book_detail_description: description,

                ),
              ),
              ),

              child:GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: new Row(
                    children: [
                      Expanded(child: Text(book_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                      ),
                      new Text("₹${rent_price}/week", style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),)
                    ],
                  ),

                ),
                child: Image.asset(book_picture,
                  fit: BoxFit.contain,),
              ),
            )
        ),
      ),
    );
  }
}

