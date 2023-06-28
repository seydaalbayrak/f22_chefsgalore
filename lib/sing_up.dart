import 'package:f22_chefsgalore/app_style.dart';
import 'package:f22_chefsgalore/components/card_tile.dart';
import 'package:f22_chefsgalore/components/my_button.dart';
import 'package:f22_chefsgalore/components/my_textfield.dart';
import 'package:f22_chefsgalore/homepage.dart';
import 'package:f22_chefsgalore/service/auth.dart';
import 'package:f22_chefsgalore/signin.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  //textfield kontrolleri
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //checkbox kontrolleri
  bool? isChecked = false;
  AuthService _authService =AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sWhite,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Bir hesap oluşturun",
                      style: sPoppinsBold.copyWith(color: sBlack, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hesabınızı oluşturmanıza yardımcı olalım,\nuzun sürmeyecek.",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 11),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              //isim alanı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "İsim",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 16),
                    ),
                  ],
                ),
              ),
              MyTextfield(
                controller: nameController,
                hintText: 'İsim Giriniz',
                obscureText: false,
              ),

              const SizedBox(height: 15),

              //e-posta alanı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "E-posta",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 16),
                    ),
                  ],
                ),
              ),
              MyTextfield(
                controller: emailController,
                hintText: 'E-posta Giriniz',
                obscureText: false,
              ),

              const SizedBox(height: 15),

              //şifre alanı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Şifre",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 16),
                    ),
                  ],
                ),
              ),
              MyTextfield(
                controller: passwordController,
                hintText: 'Şifre Giriniz',
                obscureText: true,
              ),

              const SizedBox(height: 15),

              //şifre onayla alanı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Şifre Onayla",
                      style:
                          sPoppinsRegular.copyWith(color: sBlack, fontSize: 16),
                    ),
                  ],
                ),
              ),
              MyTextfield(
                controller: confirmPasswordController,
                hintText: 'Şifrenizi Onaylayın',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //şartlar, koşullar ve checkbox
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: isChecked,
                        splashRadius: 22.0,
                        side: const BorderSide(color: sSecondary),
                        activeColor: sSecondary,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        }),
                    TextButton(
                      child: Text(
                        "Şartları ve Koşulları kabul et",
                        style: sPoppinsRegular.copyWith(
                            color: sSecondary, fontSize: 11),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              //giriş butonu
              MyButton(
                buttonText: "Kayıt Ol",
                onTap: () {
                  _authService.createPerson(nameController.text, emailController.text, passwordController.text).then((value){
                  return Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));});
                },
              ),

              const SizedBox(height: 20),

              //Veya Giriş Yap
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: sGray4,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text("Veya Giriş Yap",
                        style: sPoppinsSemiBold.copyWith(
                            color: sGray4, fontSize: 11)),
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
                    "Zaten bir üye misiniz?",
                    style:
                        sPoppinsSemiBold.copyWith(fontSize: 12, color: sBlack),
                  ),
                  TextButton(
                      onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>SingIn()));

                      },
                      child: Text(
                        "Giriş Yap",
                        style: sPoppinsSemiBold.copyWith(
                            fontSize: 12, color: sSecondary),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
