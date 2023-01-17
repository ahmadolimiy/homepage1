import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';



class SlidShow extends StatelessWidget {
  const SlidShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 25.0,
          offset: Offset(0,5),
        ),        ]
      ),
      height: 20,
      child: Marquee (
        text: 'this app will be for worker',
        style: TextStyle(fontWeight: FontWeight.bold),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: 100.0,
        pauseAfterRound: Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ) ,
    );
  }
}
