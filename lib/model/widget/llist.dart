import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../controller/homecontroller.dart';

class ListofWorker extends StatelessWidget {
  const ListofWorker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
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
    );
  }
}
