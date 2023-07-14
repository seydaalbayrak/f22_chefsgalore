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
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Kayıt Edilenler Listesi',
            style: sPoppinsBold.copyWith(color: sBlack, fontSize: 22),
          ),
        ),
        backgroundColor: sWhite,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 15),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Repice()));
                  },
                  child: Positioned(
                    child: Center(
                      child: Container(
                        width: 315,
                        height: 150,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(sBorderRadius),
                          ),
                        ),
                        child: Image.asset(
                            'assets/images/recipeimage${index + 1}.png'),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  //yıldız bölümü
                  left: 290,
                  top: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFFE1B3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(sBorderRadius),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text('☆ 4.0',
                            textAlign: TextAlign.right,
                            style: sPoppinsSemiBold.copyWith(
                              color: sBlack,
                              fontSize: 9,
                            )),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  //bokmark bölümü
                  left: 305,
                  top: 123,
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 4,
                          top: 4,
                          child: SizedBox(
                            width: 16,
                            height: 16,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                ),
                                const Positioned(
                                  child: Icon(
                                    Icons.bookmark_border,
                                    size: 16,
                                    color: sPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //dakika ve saat icon bölümü
                Positioned(
                  left: 230,
                  top: 123,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 3.50),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.access_alarms_rounded,
                          size: 18,
                          color: sGray4,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '20 min',
                          style: sPoppinsSemiBold.copyWith(
                              color: sGray4, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                //chef yazısı
                Positioned(
                  left: 35,
                  top: 123,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 3.50),
                    child: Text(
                      'By Chef',
                      style: sPoppinsSemiBold.copyWith(
                          color: sGray4, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
