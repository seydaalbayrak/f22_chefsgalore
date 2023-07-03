import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:f22_chefsgalore/addPage.dart';
import 'package:f22_chefsgalore/app_style.dart';
import 'package:f22_chefsgalore/bookmarkList.dart';
import 'package:f22_chefsgalore/home.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  const HomePage({Key? key}):super(key:key);
  @override
  State<HomePage> createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    Home(), // Ana sayfa içeriği
    BookmarkList(), // Kaydetme  listesi
    AddPage(), // Diğer sayfalar
    Container(), // Diğer sayfalar
    Container(), // Diğer sayfalar
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: sBackground,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: sWhite,
        color: sPrimary,
        items: const [
          Icon(Icons.home,color:sWhite),
          Icon(Icons.bookmark,color:sWhite),
          Icon(Icons.add,color:sWhite),
          Icon(Icons.notifications,color:sWhite),
          Icon(Icons.person,color:sWhite),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _tabs[_currentIndex],
    );
  }
}