import 'package:flutter/material.dart';
import 'package:f22_chefsgalore/app_style.dart';

class BookmarkList extends StatelessWidget {
  const BookmarkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: sBackground,
      appBar: AppBar(
        title: Text('Kayd Edilenler Listesi'),
        backgroundColor: sPrimary,
      ),

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Image.asset('assets/images/image${index+1}.png'),
                
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'Yemek $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },),
    );
  }
}
