import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context){
       return Container(
         height: 100.0,
         child: ListView(
           scrollDirection: Axis.horizontal,
           children: <Widget>[
             Category(
               image_location: 'images/educational.jpg' ,
               image_caption: 'Education',
             ),
             Category(
               image_location: 'images/Historic.jpg' ,
               image_caption: 'History',
             ),
             Category(
               image_location: 'images/Comic Book.jpg' ,
               image_caption: 'Comics',
             ),
             Category(
               image_location: 'images/Religious.jpg' ,
               image_caption: 'Religion',
             ),
             Category(
               image_location: 'images/Romance.jpg' ,
               image_caption: 'Romance',
             ),
             Category(
               image_location: 'images/Children3.jpg' ,
               image_caption: 'Children',
             ),
             Category(
               image_location: 'images/Business2.jpg' ,
               image_caption: 'Business',
             ),
             Category(
               image_location: 'images/Biography (1).jpg' ,
               image_caption: 'Biography',
             )

           ],



       )
       );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    required this.image_location,
    required this.image_caption,
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: () {},
    child: Container(
      width: 100.0,


    child: ListTile(

      title: Image.asset(image_location,
      width: 100.0,
      height: 80.0,),
      subtitle:Container(
        alignment: Alignment.topCenter,
        child: Text(image_caption, style: new TextStyle(fontSize: 12.0,),)
      )
    ),
    ),
    ),
    );


  }
}


