import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:binding/binding.dart';
import 'package:worker/controller/homecontroller.dart';





class Bind implements Bindings {  @override
  void dependencies() {

  HomeController controller=Get.put<HomeController>(HomeController()) ;
    // TODO: implement dependencies
  }
}
