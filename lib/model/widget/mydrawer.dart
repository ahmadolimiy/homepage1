import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screen/login.dart';
import '../screen/signup.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container (
        decoration:BoxDecoration (
          gradient: LinearGradient(
              begin: Alignment.topLeft ,
             end: Alignment.bottomLeft,
              colors: [
                Color(0xffD6D6D6),
                Color(0xff9E9E9E),

          ]
          )

        ),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topRight,
                        onPressed: () {
                     //     Get.off(Categories());
                        },
                        icon: Icon(Icons.close),
                        color: Colors.white,
                        iconSize: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [

                    SizedBox(width: 10),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Worker',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                    // Padding(
                    //     padding: EdgeInsets.only(top: 18, left: 10),
                    //     child: CircleAvatar(
                    //         radius: 30,
                    //         child: ClipRRect(
                    //           child: Image.asset('images/ahmad.jpg'),
                    //           borderRadius:BorderRadius.circular(50),
                    //         )
                    //     )
                    // ),

                  ],
                ),
                const  SizedBox(height: 70),
                const Divider(
                  thickness: 2.2,
                  color: Color(0xffFFFFFF),
                   indent: 0,
                   endIndent:0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0,top: 20),
                  child: Column(
                    children:  [

                      TextButton(
                        onPressed: (){
                          Get.to(MyLogin()) ;
                        },
                        child: ListTile(
                          leading: Icon(Icons.follow_the_signs_rounded),
                          title: Text('sign in '),
                        ),
                      ),
                      TextButton(
                        onPressed: ( ){
                          Get.to(MyRegister())  ;

                        },
                        child: const ListTile(

                          leading: Icon(Icons.sign_language),
                          title: Text('sign up'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                const Divider(
                  thickness: 2.2,
                  color: Color(0xffFFFFFF),
                  indent: 0,
                  endIndent: 0,
                ),
                SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 35,top: 20),
                  child: ListTile(
                    //   title: Text('Logout',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),



    );
  }
}
