import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TabbarItems extends StatefulWidget {
  const TabbarItems({super.key});

  @override
  State<TabbarItems> createState() => _TabbarItemsState();
}

class _TabbarItemsState extends State<TabbarItems> {
  List titles = [
    "Klasik Türk Salatası",
    "Çıtır Lahana Salatası",
    "Karides Tavuk ",
    "Barbekü Tavuk",
    "Portekiz Piri Piri "
  ];
  List titlesAlt = [
    "Domatesli Biftek",
    "Üzümlü Pilav",
    "Portekiz Piri",
    "Karides Tavuk ",
    "Soslu tavuk",
  ];
  List titleName = [
    "İbrahim Balta",
    "Şeyda Albayrak",
    "Beyza Yılmaz",
    "Tuba Gürbüz",
    "Mustafa Erdoğan",
  ];
  List titleAltImages = [
    "altimage1",
    "altimage2",
    "altimage3",
    "altimage4",
    "altimage5",
  ];

  List titleImages = [
    "image1",
    "image2",
    "image3",
    "image4",
    "image5",
  ];

  List<String> tabCategories = [
    "Tümü",
    "Turkey",
    "Italian",
    "Mexican",
    "Chinese"
  ];

  int selectedIndex = 0;
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      //kategori tabbar
      child: Column(
        children: [
          SizedBox(
            height: 51,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: tabCategories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    margin: const EdgeInsets.all(9),
                    width: 61,
                    height: 31,
                    decoration: BoxDecoration(
                        color: selectedIndex == index ? sPrimary : sWhite,
                        borderRadius: selectedIndex == index
                            ? BorderRadius.circular(sBorderRadius)
                            : BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        tabCategories[index],
                        style: sPoppinsRegular.copyWith(
                            fontSize: 11,
                            color: selectedIndex == index ? sWhite : sPrimary),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          //orta bölümdeki resimli yemek menü
          Column(
            children: [
              SizedBox(
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: titleImages.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 220,
                            width: 180,
                            decoration: BoxDecoration(
                              color: sGray4,
                              borderRadius:
                                  BorderRadius.circular(sBorderRadius),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  color: sGray4,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Center(
                                    child: Text(
                                      titles[index],
                                      style: sPoppinsBold.copyWith(
                                          fontSize: 14, color: sBlack),
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  Text(
                                    "Time",
                                    style: sPoppinsMedium.copyWith(
                                      color: sGray3,
                                      fontSize: 11,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "15 dk",
                                        style: sPoppinsMedium.copyWith(
                                          color: sBlack,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color: sWhite,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: InkWell(
                                          onTap: () {},
                                          child: const Icon(
                                            Icons.bookmark_border,
                                            size: 18,
                                            color: sPrimary,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                           
                        Positioned(
                          left: 25,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Image.asset(
                              "assets/images/${titleImages[index]}.png",
                              height: 155,
                              width: 155,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
           
              const SizedBox(height: 30),

              Row(
                children: [
                  Text(
                    "Yeni Tarifler",
                    style: sPoppinsBold.copyWith(color: sBlack, fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              //alt yeni tarifli menü
              SizedBox(
                height: 140,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: titleAltImages.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 5, top: 40, bottom: 5),
                          child: Container(
                            height: 140,
                            width: 260,
                            decoration: BoxDecoration(
                              color: sWhite,
                              boxShadow: const [
                                BoxShadow(
                                  color: sGray4,
                                  blurRadius: 8,
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    titlesAlt[index],
                                    style: sPoppinsBold.copyWith(
                                        color: sBlack, fontSize: 14),
                                  ),
                                  RatingBar.builder(
                                      itemSize: 16,
                                      minRating: 1,
                                      itemBuilder: (context, _) => const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                      onRatingUpdate: (rating) {
                                        setState(() {
                                          this.rating = rating;
                                        });
                                      }),
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/card_profile.png"),
                                      const SizedBox(width: 5),
                                      Text(
                                        titleName[index],
                                        style: sPoppinsMedium.copyWith(
                                            color: sGray3, fontSize: 12),
                                      ),
                                      const SizedBox(width: 40),
                                      const Icon(
                                        Icons.access_alarms_rounded,
                                        color: sGray3,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "20 dk",
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
                        //alt yeni tarifli menü resimleri
                        Positioned(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 30),
                            child: Container(
                              width: 115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Image.asset(
                                "assets/images/${titleAltImages[index]}.png",
                                height: 160,
                                width: 160,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
