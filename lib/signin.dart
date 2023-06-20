import 'package:flutter/material.dart';

void main() {
  runApp(UygulamaSayfasi());
}

class UygulamaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              left: 30,
              top: 44,
              child: Text(
                'Merhaba',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  height: 1.5,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 89,
              child: Text(
                'Tekrar Hoşgeldiniz!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 160,
              right: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'E-posta',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-posta Giriniz',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Şifre',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Şifre Giriniz',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        // Şifrenizi mi unuttunuz butonu
                      },
                      child: Text(
                        'Şifrenizi mi unuttunuz?',
                        style: TextStyle(
                          color: Color(0xFFFF9C00),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Giriş yap butonu
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF129575),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 85,
                        ),
                      ),
                      icon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Giriş Yap',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.arrow_forward, size: 16),
                        ],
                      ),
                      label: Text(''),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Veya Giriş Yap',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        height: 1.6,
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Google ile giriş yapma
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 40,
                          ),
                        ),
                        icon: Icon(Icons.g_translate),
                        label: Text('Google'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Facebook ile giriş yapma
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 40,
                          ),
                        ),
                        icon: Icon(Icons.facebook),
                        label: Text('Facebook'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Üye ol butonuna tıklama
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Hesabınız yok mu? ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            height: 1.6,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Üye Ol',
                              style: TextStyle(
                                color: Color(0xFFFF9C00),
                              ),
                            ),
                          ],
                        ),
                      ),
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

