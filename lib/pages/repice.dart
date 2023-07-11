import 'package:flutter/material.dart';
import '../components/app_style.dart';

class Repice extends StatefulWidget {
  const Repice({super.key});

  @override
  State<Repice> createState() => _RepiceState();
}

class _RepiceState extends State<Repice> {
  List images = [
    "image6",
    "image7",
    "image8",
    "image9",
  ];
  List titles = [
    "Domates",
    "Kabak",
    "Taco ",
    "Dilim Ekmek",
  ];
  List titlesItem = [
    "500g",
    "300g",
    "250g ",
    "300g",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sWhite,
      //appbar kısı geri ve menü butonu
      appBar: AppBar(
        backgroundColor: sWhite,
        leading:  Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: InkWell(
            
            onTap: (){
               Navigator.pop(context);
            },
            child: const Icon(
                Icons.arrow_back,
                color: sBlack,
              ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
            child: IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.more_horiz,
                  color: sBlack,
                )),
          )
        ],
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Stack(
                //ana resim bölümü
                children: [
                  Positioned(
                    child: Container(
                      width: 315,
                      height: 150,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(sBorderRadius),
                        ),
                      ),
                      child: Image.asset("assets/images/recipeimage1.png"),
                    ),
                  ),
                  Positioned(
                    //yıldız bölümü
                    left: 268,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 2),
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
                    left: 284,
                    top: 116,
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
                    left: 210,
                    top: 116,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 3.50),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.access_alarms_rounded,
                            size: 18,
                            color: sGray3,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '20 min',
                            style: sPoppinsSemiBold.copyWith(
                                color: sGray3, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        child: Text('Baharatlı tavuk burger',
                            style: sPoppinsBold.copyWith(
                                color: sBlack, fontSize: 13)),
                      ),
                      SizedBox(
                        child: Text('(13k Görüntüleme)',
                            style: sPoppinsRegular.copyWith(
                                color: sGray3, fontSize: 13)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //profil isim ve takip et buton bölümü
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/card_profile.png"),
                          const SizedBox(width: 5),
                          Column(
                            children: [
                              Text(
                                "İbrahim balta",
                                style: sPoppinsMedium.copyWith(
                                    color: sBlack, fontSize: 11),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: sPrimary,
                                    size: 16,
                                  ),
                                  Text(
                                    "Trabzon",
                                    style: sPoppinsMedium.copyWith(
                                        color: sGray3, fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 90),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: sPrimary,
                                borderRadius:
                                    BorderRadius.circular(sBorderRadius),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Takip et",
                                      style: sPoppinsBold.copyWith(
                                        color: sWhite,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //tabbar butonları
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TabBar(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(10),
                unselectedLabelColor: sPrimary,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(sBorderRadius),
                    color: sPrimary),
                tabs: [
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(sBorderRadius),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "İçindekiler",
                          selectionColor: sWhite,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(sBorderRadius),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Prosedür",
                          selectionColor: sWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.room_service_outlined),
                      Text(
                        "1 servis",
                        style: sPoppinsMedium.copyWith(
                            color: sGray3, fontSize: 12),
                      ),
                      const SizedBox(width: 40),
                      Text(
                        "4 Öğe",
                        style: sPoppinsMedium.copyWith(
                            color: sGray3, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //içindekiler bölümü
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Container(
                            height: 76,
                            width: 300,
                            decoration: BoxDecoration(
                              color: sGray4,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 52,
                                        height: 52,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: sWhite),
                                        child: Image.asset(
                                          "assets/images/${images[index]}.png",
                                        ),
                                      ),
                                      Text(
                                        titles[index],
                                        style: sPoppinsMedium.copyWith(
                                            color: sBlack, fontSize: 14),
                                      ),
                                      Text(
                                        titlesItem[index],
                                        style: sPoppinsMedium.copyWith(
                                            color: sGray3, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        )),
      ),
    );
  }
}
