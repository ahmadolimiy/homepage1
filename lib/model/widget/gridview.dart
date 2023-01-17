import 'package:flutter/material.dart';



class CoGrid extends StatelessWidget {
  const CoGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
children: [
  Padding(
    padding: EdgeInsets.all(20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(image: AssetImage('images/popular_perfume/bath-and-body.jpeg'),
      fit: BoxFit.fill,
      ),
    ),
  ),
  Padding(
    padding: EdgeInsets.all(20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(image: AssetImage('images/popular_perfume/bath-and-body.jpeg'),
        fit: BoxFit.cover,),
    ),
  ),
  Padding(
    padding: EdgeInsets.all(20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(image: AssetImage('images/popular_perfume/bath-and-body.jpeg'),
        fit: BoxFit.cover,),
    ),

  )
      ],
    );
  }
}
