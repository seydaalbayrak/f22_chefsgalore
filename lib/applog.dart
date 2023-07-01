import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isPressed1 = true;
  bool isPressed2 = false;
  List<String> followerNotifications = [
    'Ayşe Sever seni takip etti.',
    'Mehmet Ay yorumunu beğendi.',
    'Zeynep Doğa yorumunu beğendi.',
  ];
  List<String> followingNotifications = [
    'Fatih Gül yeni bir tarif ekledi. Hemen tıkla!'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'BİLDİRİMLER',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPressed1 = true;
                        isPressed2 = false;
                      });
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(150, 48),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return isPressed1 ? Colors.green.shade800 : Colors.white;
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Takipçilerim',
                      style: TextStyle(
                        fontSize: 17,
                        color: isPressed1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPressed1 = false;
                        isPressed2 = true;
                      });
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(150, 48),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return isPressed2 ? Colors.green.shade800 : Colors.white;
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Takip ettiklerim',
                      style: TextStyle(
                        fontSize: 17,
                        color: isPressed2 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  isPressed1 ? 'Bugün' : 'Dün',
                  style: TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: isPressed1 ? followerNotifications.length : followingNotifications.length,
                itemBuilder: (context, index) {
                  String notification = isPressed1 ? followerNotifications[index] : followingNotifications[index];

                  return Card(
                    color: Colors.grey.shade500,
                    child: ListTile(
                      leading: Icon(
                        isPressed1 ? Icons.person : Icons.restaurant,
                        color: Colors.white,
                      ),
                      title: Text(
                        notification,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
