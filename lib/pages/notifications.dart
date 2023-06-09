import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isPressed1 = true;
  bool isPressed2 = false;
  List<NotificationItem> followerNotifications = [
    NotificationItem(
      message: 'Ayşe Sever seni takip etti.',
      image: 'assets/images/person-2.jpeg',
    ),
    NotificationItem(
      message: 'Mehmet Ay yorumunu beğendi.',
      image: 'assets/images/man3.jpg',
    ),
    NotificationItem(
      message: 'Beren Tat gönderine bir yorum bıraktı:  '
          'Kaç derece fırında pişirmeliyiz?',
      image: 'assets/images/mother.jpg',
    ),
    NotificationItem(
      message: 'Ela Ak gönderine bir yorum bıraktı: Hemen denedim. Nefis oldu!',
      image: 'assets/images/women.jpg',
    ),
    NotificationItem(
      message: 'Ezgi Yeter yorumunu beğendi.',
      image: 'assets/images/girl.jpg',
    ),
    NotificationItem(
      message: 'Emre Uslu gönderine bir yorum bıraktı:  '
          'En kısa sürede deneyeceğim.',
      image: 'assets/images/man.jpg',
    ),
    NotificationItem(
      message: 'Cemre Soy gönderini beğendi.',
      image: 'assets/images/woman2.jpg',
    ),
    NotificationItem(
      message: 'Eren Erim seni takip etti .',
      image: 'assets/images/man3.jpg',
    ),
     NotificationItem(
      message: 'Ela Ak gönderine bir yorum bıraktı: Hemen denedim. Nefis oldu!',
      image: 'assets/images/women.jpg',
    ),
    NotificationItem(
      message: 'Ezgi Yeter yorumunu beğendi.',
      image: 'assets/images/girl.jpg',
    ),
  ];
  List<NotificationItem> followingNotifications = [
    NotificationItem(
      message:
          'Fatih Gül yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/man1.jpg',
    ),
    NotificationItem(
      message:
          'Gizem Zaman yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/person.jpg',
    ),
    NotificationItem(
      message:
          'Yasin Ada yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/man4.jpg',
    ),
    NotificationItem(
      message: 'İrem Arı yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/2woman.jpg',
    ),
    NotificationItem(
      message:
          'Ömer Örnek yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/people2.jpg',
    ),
    NotificationItem(
      message: 'Nur Kaya yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/women4.jpg',
    ),
    NotificationItem(
      message:
          'Simge Dağ yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/women5.jpg',
    ),
    NotificationItem(
      message:
          'Bahar Yelken yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/teenage-girl.jpg',
    ),
    NotificationItem(
      message: 'İrem Arı yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/2woman.jpg',
    ),
    NotificationItem(
      message:
          'Ömer Örnek yeni bir tarif ekledi. Görüntülemek için hemen tıkla!',
      image: 'assets/images/people2.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 45),
            Text(
              'BİLDİRİMLER',
              style: sPoppinsBold.copyWith(
                color: sBlack,
                fontSize: 22,
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
                          return isPressed1 ? sPrimary : sWhite;
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
                            color: isPressed1 ? sWhite : sPrimary,
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
                          return isPressed2 ? sPrimary : sWhite;
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
                        Text(
                          'Takip ettiklerim',
                          style: TextStyle(
                            fontSize: 17,
                            color: isPressed2 ? sWhite : sPrimary,
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
                  style: sPoppinsMedium.copyWith(
                color: sBlack,
                fontSize: 22,
              ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: isPressed1
                    ? followerNotifications.length
                    : followingNotifications.length,
                itemBuilder: (context, index) {
                  NotificationItem notification = isPressed1
                      ? followerNotifications[index]
                      : followingNotifications[index];

                  return Card(
                    color: sGray4,
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
