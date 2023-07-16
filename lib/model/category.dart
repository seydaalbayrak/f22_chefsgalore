import 'package:cloud_firestore/cloud_firestore.dart';
class Category{
  String id;
  String name;

  Category({required this.id, required this.name});

   factory Category.fromsnapshot(DocumentSnapshot snapshot){
     return Category(
       id:snapshot.id,
       name:snapshot["name"],
     );
   }
}