import 'package:f22_chefsgalore/pages/repice.dart';
import 'package:flutter/material.dart';
import 'package:f22_chefsgalore/components/app_style.dart';

class BookmarkList extends StatelessWidget {
  const BookmarkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: sBackground,
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Kayıt Edilenler Listesi',style: sPoppinsBold.copyWith(
          color: sBlack,
          fontSize: 22
        ),),
        backgroundColor: sWhite,
        elevation: 0,

      ),

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Center(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Repice()));
                  },
                  child: Image.asset('assets/images/image${index+1}.png'))),
                
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'Yemek $index',
                      style: const TextStyle(color: sWhite),
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
