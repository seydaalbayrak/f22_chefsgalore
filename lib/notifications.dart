import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isPressed1 = true;
  bool isPressed2 = false;
  List<NotificationItem> followerNotifications = [
    NotificationItem(
      message: 'Ayşe Sever seni takip etti.',
      image: 'lib/images/person-2.jpeg',
    ),
    NotificationItem(
      message: 'Mehmet Ay yorumunu beğendi.',
      image: 'lib/images/man3.jpg',
    ),
    NotificationItem(
      message: 'Beren Tat gönderine bir yorum bıraktı:  '
          'Kaç derece fırında pişirmeliyiz?',
      image: 'lib/images/mother.jpg',
    ),
    NotificationItem(
      message: 'Ela Ak gönderine bir yorum bıraktı: Hemen denedim. Nefis oldu!',
      image: 'lib/images/women.jpg',
    ),
  ];
  List<NotificationItem> followingNotifications = [

    NotificationItem(
      message: 'Fatih Gül yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/man1.jpg',
    ),
    NotificationItem(
      message: 'Gizem Zaman yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/person.jpg',
    ),  NotificationItem(
      message: 'Yasin Ada yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/man4.jpg',
    ),
    NotificationItem(
      message: 'İrem Arı yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/2woman.jpg',
    ),

  ];

  List<NotificationItem> yesterdayNotifications = [
    NotificationItem(
      message: 'Ezgi Yeter yorumunu beğendi.',
      image: 'lib/images/girl.jpg',
    ),
    NotificationItem(
      message: 'Emre Uslu gönderine bir yorum bıraktı:  '
          'En kısa sürede deneyeceğim.',
      image: 'lib/images/man.jpg',
    ),
    NotificationItem(
      message: 'Cemre Soy gönderini beğendi.',
      image: 'lib/images/woman2.jpg',
    ),

    NotificationItem(
      message: 'Eren Erim seni takip etti .',
      image: 'lib/images/man3.jpg',
    ),
  ];
  List<NotificationItem> yesterdayNotifications2 = [
    NotificationItem(
      message: 'Ömer Örnek yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/people2.jpg',
    ),
    NotificationItem(
      message: 'Nur Kaya yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/women5.jpg',
    ),  NotificationItem(
      message: 'Simge Dağ yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/women4.jpg',
    ),
    NotificationItem(
      message: 'Bahar Yelken yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'lib/images/teenage-girl.jpg',
    ),
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
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        Text(
                          'Takipçilerim',
                          style: TextStyle(
                            fontSize: 17,
                            color: isPressed1 ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
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
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        Text(
                          'Takip ettiklerim',
                          style: TextStyle(
                            fontSize: 17,
                            color: isPressed2 ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  isPressed1 ? 'Bugün' : 'Bugün',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: isPressed1 ? followerNotifications.length : followingNotifications.length,
                itemBuilder: (context, index) {
                  NotificationItem notification = isPressed1
                      ? followerNotifications[index]
                      : followingNotifications[index];

                  return Card(
                    color: Colors.grey.shade400,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(notification.image),
                      ),
                      title: Text(
                        notification.message,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  isPressed2 ? 'Dün' : 'Dün',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: isPressed1 ? yesterdayNotifications.length : yesterdayNotifications2.length,
                itemBuilder: (context, index) {
                  NotificationItem notification = isPressed1
                      ? yesterdayNotifications[index]
                      : yesterdayNotifications2[index];



                  return Card(
                    color: Colors.grey.shade400,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(notification.image),
                      ),
                      title: Text(
                        notification.message,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
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

class NotificationItem {
  final String message;
  final String image;

  NotificationItem({required this.message, required this.image});
}