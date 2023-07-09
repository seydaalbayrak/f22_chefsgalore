import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text(
                'Yemek Tarifleri',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  height: 1.5,
                ),
              ),
            ),
            const Positioned(
              top: 58,
              left: 30,
              child: SizedBox(
                width: 20,
                height: 20,
                child: Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 98,
              right: MediaQuery.of(context).size.width / 2 - 142.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 285,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Tarif Ara',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Son Aramalar',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 202,
              left: 30,
              right: 30,
              bottom: 30,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(10, (index) {
                  return Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
