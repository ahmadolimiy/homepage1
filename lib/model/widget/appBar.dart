




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:worker/controller/homecontroller.dart';



class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.find<HomeController>() ;
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 2),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        title: Container(
          height: 60,
          width: Get.width,
          child:
                Padding(
                  padding: EdgeInsets.only(bottom: 5,top: 5),
                  child: TextField(
                    onChanged: (value){
                    },
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                         filled: true,
                      hintText: 'search' ,
                      suffix: Icon(Icons.search),
                      border: OutlineInputBorder (
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none
                      )




            ),
          ),
                ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [

              ],
            ),
          )
        ],
      ),

    );
  }
}
