import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker/controller/homecontroller.dart';

import '../widget/appBar.dart';
import '../widget/mydrawer.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: GetBuilder<HomeController>(
      builder: (controller)=>
         ListView.builder(
           itemCount: 5,
            itemBuilder:(context,index){
             return
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                 height: Get.height*0.2,
                padding: EdgeInsets.only(left: 20,right: 20),
                 width: Get.width/2,
                 child:Row (
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                     Icon(Icons.add),
                     Text('ffffs',style: TextStyle(color: Colors.black),) ,
                       ],
                     ),

                     Text('name')

                   ],
                 ),
             ),
              ) ; }
        ),
      ),
    );
  }
}
