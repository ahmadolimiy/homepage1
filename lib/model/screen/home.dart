import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker/controller/homecontroller.dart';

import '../widget/appBar.dart';
import '../widget/mydrawer.dart';
import '../widget/slidShowHomeScreen.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(
         appBar:
        const PreferredSize (
          preferredSize: Size.fromHeight(70),
          child: Appbar(),
        ) ,
        drawer: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 150),
          child:MyDrawer(
          ),
        ),
        body: Column(
          children: [
            Container(height: 20,
              //should disapeer the line between the contaners
            ),
            Container(
              decoration: BoxDecoration (
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25.0,
                    offset: Offset(0,9),
                  ),
                ]
              ),
              child: Column (
                         children: [

                           SlidShow () ,

                         ],
      ),
            ),
          ],
        )
      ),
    );
  }
}
