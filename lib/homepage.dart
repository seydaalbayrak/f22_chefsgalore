import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  const HomePage({Key? key}):super(key:key);
  @override
  State<HomePage> createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color:Color(0xff129575),
        items:[
          Icon(Icons.home,color:Colors.white),
          Icon(Icons.bookmark,color:Colors.white),
          Icon(Icons.add,color:Colors.white),
          Icon(Icons.notifications,color:Colors.white),
          Icon(Icons.person,color:Colors.white),
        ]
      ),
    );
  }
}