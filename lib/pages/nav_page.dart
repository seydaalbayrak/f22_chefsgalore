import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:f22_chefsgalore/pages/add_page.dart';
import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:f22_chefsgalore/pages/bookmark_list.dart';
import 'package:f22_chefsgalore/pages/home.dart';
import 'package:f22_chefsgalore/pages/profile.dart';
import 'package:flutter/material.dart';

import 'notifications.dart';
class NavPage extends StatefulWidget{
  const NavPage({Key? key}):super(key:key);
  @override
  State<NavPage> createState()=>_NavPageState();
}

class _NavPageState extends State<NavPage>{
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const Home(), // Ana sayfa içeriği
    const BookmarkList(), // Kaydetme  listesi
    const AddPage(), // Diğer sayfalar
    const Notifications(), // Diğer sayfalar
    const Profile(), // Diğer sayfalar
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: sBackground,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: sWhite.withOpacity(0.5),
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