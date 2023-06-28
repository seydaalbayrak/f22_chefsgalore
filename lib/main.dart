import 'package:f22_chefsgalore/home.dart';
import 'package:f22_chefsgalore/signin.dart';
import 'package:flutter/material.dart';
import 'package:f22_chefsgalore/homepage.dart';

import 'sing_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingUp(),
    );
  }
}
