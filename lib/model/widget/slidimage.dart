import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlidImage extends StatelessWidget {
  const SlidImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height:200.0),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              child: Container(
                width: 270,
                decoration:BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                    color: Colors.lightBlueAccent,
                blurRadius: 12.0,
                offset: Offset(0,10),
              ),

                  ]
                )
                ,
                child: Container(
                  width: 270,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                        child: Image(
                          image: AssetImage('images/top_menu/inspired-by-creed.jpeg'),
                          fit: BoxFit.cover))
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
