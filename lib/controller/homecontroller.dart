import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//snapshot.data?.docs[index].get('url')
class HomeController extends GetxController {
  CollectionReference?  collection ;
  var snapshot=FirebaseFirestore.instance.collection('workerdata').snapshots() ;




signup( String name ,String phone, String address) {
collection?.add({'name':name,'address':phone,'phone':address}) ;
}
getdata()async{


}





@override
  void onInit() {

 collection=FirebaseFirestore.instance.collection('workerdata') ;


    // TODO: implement onInit
    super.onInit();

}


}
