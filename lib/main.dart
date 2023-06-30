import 'package:f22_chefsgalore/home.dart';
import 'package:f22_chefsgalore/signin.dart';
import 'package:flutter/material.dart';
import 'package:f22_chefsgalore/homepage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'sing_up.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingIn(),
    );
  }
}
