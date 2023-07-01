import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _onButtonPressed() {
    print('Butona tıklandı!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),

          child: Column( //logolar
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/images/logo1.png'),

              Image.asset('lib/images/logo2.png'),


              const Text( //slogan
                'Lezzetli Tariflerin Pratik Yolu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color:Colors.white,
                ),
              ),
              const SizedBox(height: 25),


              ElevatedButton(
                onPressed: _onButtonPressed,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.teal.shade700,
                    textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    fixedSize: const Size(250, 58)
                ),
                child: const Text('Pişirmeye Başla →'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
