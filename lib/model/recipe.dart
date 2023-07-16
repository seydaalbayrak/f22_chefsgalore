import 'package:cloud_firestore/cloud_firestore.dart';
class Recipe{
  String id;
  String categoryid;
  String image;
  String name;
  String procedure;
  String time;


  Recipe({required this.id, required this.categoryid,required this.image,required this.name,required this.procedure,required this.time});

  factory Recipe.fromsnapshot(DocumentSnapshot snapshot){
    return Recipe(
      id:snapshot.id,
      categoryid: snapshot["categoryid"],
      image: snapshot["image"],
      name:snapshot["name"],
      procedure: snapshot["procedure"],
      time: snapshot["time"]

    );
  }
}