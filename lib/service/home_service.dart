
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f22_chefsgalore/model/category.dart';
class HomeService{
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;

  //Category ekleme fonksiyonu
  Future<Category> addCategory(String name) async{
    var ref=_firestore.collection("Category");
    var documentRef=await ref.add({
      'name':name,
    });
    return Category(id: documentRef.id,name: name);
  }
}