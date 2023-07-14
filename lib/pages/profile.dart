import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:f22_chefsgalore/pages/loading_screen.dart';
import 'package:flutter/material.dart';

import '../service/auth.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool showRectangles = false;
  final authService = AuthService();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 45,
              left: 159,
              child: SizedBox(
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        'Profil',
                        style: sPoppinsBold.copyWith(
                          color: sBlack,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 90),
                      //profil çıkış 
                      IconButton(onPressed: (){
                        authService.signOut().then((value){
                          return Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoadingScreen()));
                        });
                      }, icon:const Icon(Icons.exit_to_app_outlined))
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 91,
              left: 30,
              child: Container(
                width: 99,
                height: 99,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: sGray3,
                ),
                child: const Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 80,
                    color: sWhite,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 205,
              left: 30,
              child: SizedBox(
                width: 146,
                height: 24,
                child: Text(
                  'Ela OĞUZ',
                  style: sPoppinsBold.copyWith(
                    color: sBlack,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 229,
              left: 30,
              child: SizedBox(
                width: 56,
                height: 17,
                child: Text(
                  'Öğrenci',
                  style: sPoppinsRegular.copyWith(
                    color: sGray3,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 256,
              left: 30,
              child: SizedBox(
                width: 256,
                height: 51,
                child: Text(
                  'Yemek yapmayı ve boş zamanlarımda yeni tarifler denemeyi seviyorum...',
                  style: sPoppinsRegular.copyWith(
                    color: sGray3,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Positioned(
              top: 307,
              left: (MediaQuery.of(context).size.width - 279) / 2,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showRectangles = true;
                      });
                    },
                    child: Container(
                      width: 83,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: showRectangles ? sPrimary : sWhite,
                         boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Tarifler',
                          style: sPoppinsRegular.copyWith(
                            color: showRectangles ? sWhite : sPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Videolar bar tıklandığında yapılacak işlemler
                    },
                    child: Container(
                      width: 83,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: sWhite,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Videolar',
                          style: sPoppinsRegular.copyWith(
                            color: sPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Etiket bar tıklandığında yapılacak işlemler
                    },
                    child: Container(
                      width: 83,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: sWhite,
                         boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Etiket',
                          style: sPoppinsRegular.copyWith(
                            color: sPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (showRectangles)
              Positioned(
                top: 354, // Yeni konum
                left: (MediaQuery.of(context).size.width - 315) / 2,
                child: Container(
                  width: 315,
                  height: 150,
                  color: sGray3,
                ),
              ),
            if (showRectangles) // Dikdörtgenleri göstermek için koşul
              Positioned(
                top: 526, // Yeni konum
                left: (MediaQuery.of(context).size.width - 315) / 2,
                child: Container(
                  width: 315,
                  height: 150,
                  color: sGray3,
                ),
              ),
            Positioned(
              top: 116,
              right: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Tarifler',
                    style: sPoppinsRegular.copyWith(
                      color: sGray3,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    '2',
                    style: sPoppinsBold.copyWith(
                      color: sBlack,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 116,
              right: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Takipçi',
                    style: sPoppinsRegular.copyWith(
                      color: sGray3,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    '304',
                    style: sPoppinsBold.copyWith(
                      color: sBlack,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 116,
              right: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Takip',
                    style: sPoppinsRegular.copyWith(
                      color: sGray3,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    '250',
                    style: sPoppinsBold.copyWith(
                      color: sBlack,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
