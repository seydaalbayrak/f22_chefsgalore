import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:f22_chefsgalore/components/my_button.dart';
import 'package:flutter/material.dart';
import '../service/home_service.dart';
import '../components/search_textfield.dart';
import '../components/tabbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> zamanList = [
    "Tümü",
    "Yeni",
    "Eski",
    "Popüler",
  ];
  List<String> yildizList = [
    "5 ☆",
    "4 ☆",
    "3 ☆",
    "2 ☆",
    "1 ☆",
  ];
  List<String> kategoriList = [
    "Tümü",
    "Kahvaltı",
    "Akşam",
    "Öğle",
    "Tahıl",
    "Meyve",
    "Ekmek",
      ];

  int selectedTime = 0;
  int selectedRate = 0;
  int selectedCategory = 0;
HomeService _homeService= HomeService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Merhaba",
                        style: sPoppinsBold.copyWith(
                          fontSize: 20,
                          color: sBlack,
                        ),
                      ),
                      Text(
                        "Bugün ne pişiriyorsun?",
                        style: sPoppinsMedium.copyWith(
                          fontSize: 14,
                          color: sGray3,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: sSecondary40,
                      borderRadius: BorderRadius.circular(sBorderRadius),
                    ),
                    child: Image.asset("assets/images/profile.png"),
                  )
                ],
              ),
              const SizedBox(height: 25),
              //arama ve filtere bolumu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: SizedBox(
                        width: 275, height: 40, child: SearchTextfield()),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: sPrimary,
                        borderRadius: BorderRadius.circular(sBorderRadius)),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        onPressed: () {
                          //Filtre butonuna tılanınca açılan pencere
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: sBackground,
                            barrierColor: sBlack.withOpacity(0.5),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(50))),
                            context: context,
                            builder: (context) => StatefulBuilder(
                              builder: (context, setState) {
                                return SizedBox(
                                height: 461,
                                child: Padding(
                                  padding: const EdgeInsets.all(25),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Filtrele ve Ara",
                                        style: sPoppinsBold.copyWith(
                                            fontSize: 14, color: sBlack),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Zaman",
                                            style: sPoppinsBold.copyWith(
                                                fontSize: 14, color: sBlack),
                                          ),
                                        ],
                                      ),
                                      //zaman list view
                                      SizedBox(
                                        height: 51,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: zamanList.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedTime = index;
                                                });
                                              },
                                              child: AnimatedContainer(
                                                duration: const Duration(
                                                    microseconds: 300),
                                                margin: const EdgeInsets.all(9),
                                                width: 61,
                                                height: 31,
                                                decoration: BoxDecoration(
                                                    color: selectedTime == index
                                                        ? sPrimary
                                                        : sWhite,
                                                    borderRadius: selectedTime ==
                                                            index
                                                        ? BorderRadius.circular(
                                                            sBorderRadius)
                                                        : BorderRadius.circular(
                                                            20)),
                                                child: Center(
                                                  child: Text(
                                                    zamanList[index],
                                                    style: sPoppinsRegular
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                selectedTime ==
                                                                        index
                                                                    ? sWhite
                                                                    : sPrimary),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Yıldız",
                                            style: sPoppinsBold.copyWith(
                                                fontSize: 14, color: sBlack),
                                          ),
                                        ],
                                      ),
                                      //Yıldız list view
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 51,
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: yildizList.length,
                                              itemBuilder: (context, index) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      selectedRate = index;
                                                    });
                                                  },
                                                  child: AnimatedContainer(
                                                    duration: const Duration(
                                                        microseconds: 300),
                                                    margin:
                                                        const EdgeInsets.all(9),
                                                    width: 61,
                                                    height: 31,
                                                    decoration: BoxDecoration(
                                                        color: selectedRate ==
                                                                index
                                                            ? sPrimary
                                                            : sWhite,
                                                        borderRadius:
                                                            selectedRate ==
                                                                    index
                                                                ? BorderRadius
                                                                    .circular(
                                                                        sBorderRadius)
                                                                : BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    child: Center(
                                                      child: Text(
                                                        yildizList[index],
                                                        style: sPoppinsRegular
                                                            .copyWith(
                                                                fontSize: 12,
                                                                color: selectedRate ==
                                                                        index
                                                                    ? sWhite
                                                                    : sPrimary),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kategori",
                                            style: sPoppinsBold.copyWith(
                                                fontSize: 14, color: sBlack),
                                          ),
                                        ],
                                      ),
                                      //kategori list view
                                      SizedBox(
                                        height: 51,

                                        /*child: ListView.builder(

                                          shrinkWrap: true,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: kategoriList.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selectedCategory = index;
                                                });
                                              },
                                              child: AnimatedContainer(
                                                duration: const Duration(
                                                    microseconds: 300),
                                                margin: const EdgeInsets.all(9),
                                                width: 61,
                                                height: 31,
                                                decoration: BoxDecoration(
                                                    color: selectedCategory ==
                                                            index
                                                        ? sPrimary
                                                        : sWhite,
                                                    borderRadius:
                                                        selectedCategory ==
                                                                index
                                                            ? BorderRadius
                                                                .circular(
                                                                    sBorderRadius)
                                                            : BorderRadius
                                                                .circular(20)),
                                                child: Center(
                                                  child: Text(
                                                    kategoriList[index],
                                                    style: sPoppinsRegular
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                selectedCategory ==
                                                                        index
                                                                    ? sWhite
                                                                    : sPrimary),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),*/

                                        child: StreamBuilder(
                                          stream: _homeService.getCategory(),
                                          builder:(context,snapshot){

                                            return !snapshot.hasData
                                                ? CircularProgressIndicator()
                                                : ListView.builder(
                                              itemCount: snapshot.data?.docs.length,
                                              itemBuilder: (context,index){
                                                var mycategory=snapshot.data?.docs[index];
                                                return SizedBox(
                                                  height: 51,
                                                  child:AnimatedContainer(
                                                    duration: const Duration(
                                                      microseconds: 300
                                                    ),
                                                    margin: const EdgeInsets.all(9),
                                                    width:61,
                                                    height: 31,
                                                    decoration: BoxDecoration(
                                                      color:selectedCategory==index? sPrimary
                                                          :sWhite,
                                                      borderRadius:
                                                        selectedCategory==
                                                        index
                                                        ?BorderRadius
                                                            .circular(sBorderRadius)
                                                    : BorderRadius.circular(20)),
                                                    child: Center(
                                                      child: Text(
                                                        "${mycategory?['name']}",
                                                        style: sPoppinsRegular
                                                        .copyWith(
                                                          fontSize: 12,
                                                          color:
                                                            selectedCategory==
                                                            index
                                                            ? sWhite
                                                             : sPrimary,
                                                        ),
                                                      ),
                                                    ),
                                                    ),
                                                  );


                                              },



                                            );

                                          }
                                        ),
                                      ),
                                      const SizedBox(height: 40),
                                      MyButton(
                                          buttonText: "Filtrele", onTap: () {}),
                                    ],
                                  ),
                                ),
                              );
                              },
                              
                            ),
                          );
                        },
                        icon: const Icon(Icons.filter_list_rounded),
                        color: sWhite,
                      ),
                    ),
                  )
                ],
              ),


              //tabbar
              const TabbarItems(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
