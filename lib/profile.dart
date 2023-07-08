import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showRectangles = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 54,
              left: 159,
              child: Container(
                width: 58,
                height: 27,
                child: Center(
                  child: Text(
                    'Profil',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      height: 27 / 18,
                      letterSpacing: 0,
                    ),
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
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 205,
              left: 30,
              child: Container(
                width: 146,
                height: 24,
                child: Text(
                  'Ela OĞUZ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    height: 24 / 18,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 229,
              left: 30,
              child: Container(
                width: 56,
                height: 17,
                child: Text(
                  'Öğrenci',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Poppins',
                    height: 17 / 11,
                    color: Color(0xFFA9A9A9),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 256,
              left: 30,
              child: Container(
                width: 256,
                height: 51,
                child: Text(
                  'Yemek yapmayı ve boş zamanlarımda yeni tarifler denemeyi seviyorum...',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Poppins',
                    height: 17 / 11,
                    color: Color(0xFF797979),
                    letterSpacing: 0,
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
                        color: showRectangles ? Colors.white : Color(0xFF71B1A1),
                      ),
                      child: Center(
                        child: Text(
                          'Tarifler',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Poppins',
                            color: showRectangles ? Color(0xFF71B1A1) : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Videolar bar tıklandığında yapılacak işlemler
                    },
                    child: Container(
                      width: 83,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF71B1A1),
                      ),
                      child: Center(
                        child: Text(
                          'Videolar',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // Etiket bar tıklandığında yapılacak işlemler
                    },
                    child: Container(
                      width: 83,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF71B1A1),
                      ),
                      child: Center(
                        child: Text(
                          'Etiket',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Poppins',
                            color: Colors.white,
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
                  color: Colors.grey,
                ),
              ),
            if (showRectangles) // Dikdörtgenleri göstermek için koşul
              Positioned(
                top: 526, // Yeni konum
                left: (MediaQuery.of(context).size.width - 315) / 2,
                child: Container(
                  width: 315,
                  height: 150,
                  color: Colors.grey,
                ),
              ),
            Positioned(
              top: 116,
              right: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Tarifler',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      height: 17 / 11,
                      color: Color(0xFFA9A9A9),
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      height: 30 / 20,
                      color: Colors.black,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 116,
              right: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Takipçi',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      height: 17 / 11,
                      color: Color(0xFFA9A9A9),
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    '304',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      height: 30 / 20,
                      color: Colors.black,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 116,
              right: 205,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Takip',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      height: 17 / 11,
                      color: Color(0xFFA9A9A9),
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    '250',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      height: 30 / 20,
                      color: Colors.black,
                      letterSpacing: 0,
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
