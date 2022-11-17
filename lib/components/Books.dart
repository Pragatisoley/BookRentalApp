import 'package:flutter/material.dart';
import 'package:book_rental_app/pages/book_details.dart';
class Books extends StatefulWidget {
  // const Books({Key? key}) : super(key: key);
  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
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
        return Single_book(
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


class Single_book extends StatelessWidget {
  final book_name;
  final book_picture;
  final author_name;
  final rent_price;
  final sell_price;
  final description;
  Single_book({
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