import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:f22_chefsgalore/pages/signin.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),

          child: Column( //logolar
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo1.png'),

              Image.asset('assets/images/logo2.png'),


               Text( //slogan
                'Lezzetli Tariflerin Pratik Yolu',
                style: sPoppinsRegular.copyWith(
                  fontSize: 16,
                  color: sWhite
                )
              ),
              const SizedBox(height: 25),


              ElevatedButton(
                onPressed: (){
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SingIn()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: sPrimary,
                    textStyle: sPoppinsBold.copyWith(
                      fontSize: 16,
                      color: sWhite
                    ),
                    fixedSize: const Size(250, 58)
                ),
                child:  const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Pişirmeye Başla'),
                    Icon(Icons.arrow_forward,size: 20,)
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
