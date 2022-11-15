import 'package:flutter/material.dart';
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
    },
    {
      "Name":"2 States",
      "Picture":"images/books/RomanticB.png",//-----give loc of pic //
      "Author_Name":"Chetan Bhagat",
      "Rent_Price": 25,
      "Sell_Price": 50,
    },
    {
      "Name":"Shadow King",
      "Picture":"images/books/HistoricB.png",//-----give loc of pic //
      "Author_Name":"Lauren Johnson",
      "Rent_Price": 25,
      "Sell_Price": 50,
    },
    {
      "Name":"The Hindu",
      "Picture":"images/books/ReligiousB.png",//-----give loc of pic //
      "Author_Name":"Manju Sehgal",
      "Rent_Price": 25,
      "Sell_Price": 50,
    }
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
  Single_book({
    this.book_name,
    this.book_picture,
    this.author_name,
    this.rent_price,
    this.sell_price,
  });
  // const Single_prod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: book_name,
          child: Material(
            child: InkWell(onTap: (){},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        book_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title:Text(
                        '\₹${sell_price}',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight:
                            FontWeight.w800),
                      ),
                      subtitle: Text(
                        '\₹${rent_price}',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight:
                            FontWeight.w800,
                             decoration: TextDecoration.lineThrough),
                      ),
                    ),


                  ),
                  child: Image.asset(book_picture,
                  fit: BoxFit.cover,)),
            ),
          )
      ),
    );
  }
}