import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import 'splash_screen.dart';
//loading ilk açılış
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> 
with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//9 saniyede splash screene gönderme loading
    Future.delayed(const Duration(milliseconds: 3590),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SplashScreen()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //arka plan tasarım
      backgroundColor: sWhite,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [sWhite, sGray4],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Lottie.network('https://assets6.lottiefiles.com/packages/lf20_poqmycwy.json')],
        ),
      ),
    );
  }
}
