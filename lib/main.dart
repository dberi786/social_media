import 'package:flutter/material.dart';
import 'package:social/DarkMode.dart';
import 'package:social/Light_Mode.dart';
import 'package:social/LoginOrRegister.dart';
import 'package:social/LoginPage.dart';
import 'package:social/RegisterPage.dart';
import 'package:social/pages/HomePage.dart';
import 'package:social/pages/Wall.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SocialWallApp(),
      theme: LightMode,
      darkTheme: DarkMode,
    );
  }
}
