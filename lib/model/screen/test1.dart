import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widget/appBar.dart';
import '../widget/gridview.dart';
import '../widget/listhor.dart';
import '../widget/slidimage.dart';

class Test1 extends StatelessWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              child: Stack(
                children: [
                  Container(
                    height: 220,
                    child: Stack(
                      children: [
                        Container (
                          decoration: BoxDecoration(
                            image: DecorationImage (
                              image: AssetImage ('images/top_menu/deodorant.jpeg',) ,
                              fit: BoxFit.fill
                              ,
                            ),
                          ),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Appbar(),
                            Container(
                               width: Get.width/1.2,
                              child: Appbar(),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 65,
                          right: 40.0,
                          child: Icon(Icons.add),
                        )


                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                   // left: Get.width/2.5,
                   height: 100,
                     width: Get.width,

                  child: SlidImage(),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(

              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Best',style: TextStyle(fontWeight:FontWeight.w700,fontSize: 20,color: Colors.cyan),),
                  ) ,
                  Container(
                    child: Text('see all',style: TextStyle(fontWeight:FontWeight.w700,fontSize: 20,color: Colors.cyan),),
                  ) ,
                ],
              ),
            ),
            SizedBox(height: 20,),
             Container(
             height: 120,
               child: ListCostomHor(),
             ),
              SizedBox(height: 20,) ,
          Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          child: Text('Almost',style: TextStyle(fontWeight:FontWeight.w700,fontSize: 20,color: Colors.cyan),),
                        ),
                      ) ,

                    ],
                  ) ,
            Container(
              height: 500,
              child: CoGrid(),

            )
          ],
        ),
      ),

    ) ;
  }
}
