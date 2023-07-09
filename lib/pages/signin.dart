import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:f22_chefsgalore/components/card_tile.dart';
import 'package:f22_chefsgalore/components/my_button.dart';
import 'package:f22_chefsgalore/components/my_textfield.dart';
import 'package:f22_chefsgalore/pages/nav_page.dart';
import 'package:f22_chefsgalore/service/auth.dart';
import 'package:f22_chefsgalore/pages/sing_up.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  SingIn({Key? key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool? isChecked = false;
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sWhite,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 90, // 90 birim boşluk
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Merhaba",
                      style: sPoppinsBold.copyWith(color: sBlack, fontSize: 30),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 5), // 5 birim boşluk

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Tekrar Hoşgeldiniz!",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50), // 50 birim boşluk,
              //e-posta alanı

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "E-posta",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 14),
                    ),
                  ),
                  MyTextfield(
                    controller: emailController,
                    hintText: 'E-posta Giriniz',
                    obscureText: false,
                  ),
                ],
              ),

              const SizedBox(height: 15),

              //şifre alanı
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Şifre",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 14),
                    ),
                  ),
                  MyTextfield(
                    controller: passwordController,
                    hintText: 'Şifre Giriniz',
                    obscureText: true,
                  ),
                  const SizedBox(height: 25), // Boşluk bırakmak için eklendi,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Şifrenizi mi Unuttunuz?",
                      style: TextStyle(
                        color: Color(0xFFFF9C00), // #FF9C00 (turuncu)
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15), // Boşluk bırakmak için eklendi
                ],
              ),

              const SizedBox(height: 10),

              //giriş butonu
              MyButton(
                buttonText: "Giriş Yap",
                onTap: () {
                  _authService
                      .signIn(emailController.text, passwordController.text)
                      .then((value) {
                    return Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const NavPage()));
                  });
                },
              ),

              const SizedBox(height: 20),

              //Veya Giriş Yap
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: sGray4,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Veya Giriş Yap",
                      style: sPoppinsSemiBold.copyWith(
                          color: sGray4, fontSize: 11),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: sGray4,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //google facebook giriş
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardTile(
                    imagePath: 'assets/images/google.png',
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  CardTile(
                    imagePath: 'assets/images/facebook.png',
                    onTap: () {},
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hesabınız yok mu?",
                    style:
                        sPoppinsSemiBold.copyWith(fontSize: 12, color: sBlack),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SingUp()));
                    },
                    child: Text(
                      "Üye Ol",
                      style: sPoppinsSemiBold.copyWith(
                          fontSize: 12, color: sSecondary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
