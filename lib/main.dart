import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker/model/screen/test1.dart';


import 'bind/bind.dart';
import 'model/screen/home.dart';
import 'model/screen/login.dart';
import 'model/screen/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
       GetPage(name: '/', page:()=> Test1(),binding: Bind()) ,
      ],

    );
  }
}
